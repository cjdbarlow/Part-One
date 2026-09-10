-- PDF image and media bridge
--
-- Quarto's LaTeX output cannot parse raw HTML images, animated GIFs, or videos
-- This filter adapts all of these into valid pdf inputs:
-- - <img> tags become Pandoc Images
-- - CSS pica widths become line-width percentages
-- - ffmpeg renders stills from videos/gis as PNGs in Pandoc's media
--     - this means you can choose one or multiple frames from a video to include into a document
--     - cool, right?

local SVG_INSTALL_ERROR = table.concat({
  "PDF output contains SVG images but rsvg-convert is unavailable.",
  "Install it with `brew install librsvg` on macOS"
}, " ")

local FFMPEG_INSTALL_ERROR = table.concat({
  "PDF output contains animated media but ffmpeg is unavailable.",
  "Install it with `brew install ffmpeg` on macOS"
}, " ")

local PDF_MEDIA_ATTRIBUTES = {
  "data-pdf-frame",
  "data-pdf-frames",
  "data-pdf-time",
  "data-pdf-times",
  "data-pdf-cols",
  "data-pdf-poster"
}

local VIDEO_EXTENSIONS = {
  avi = true,
  gif = true,
  m4v = true,
  mkv = true,
  mov = true,
  mp4 = true,
  mpeg = true,
  mpg = true,
  ogv = true,
  webm = true
}

local document_has_svg = false
local converted_media = {}
local ffmpeg_is_available = nil

local function trim(value)
  return value:match("^%s*(.-)%s*$")
end

local function split_values(value)
  local values = {}

  for item in value:gmatch("[^,]+") do
    local cleaned = trim(item)
    if cleaned ~= "" then
      table.insert(values, cleaned)
    end
  end

  return values
end

local function source_extension(source)
  local path = source:lower():gsub("[?#].*$", "")
  return path:match("%.([%w]+)$")
end

local function is_media_source(source)
  return VIDEO_EXTENSIONS[source_extension(source)] == true
end

local function is_remote_source(source)
  return source:match("^https?://") ~= nil
end

local function filesystem_source(source)
  -- Leading slashes in this project mean "from the project root", not from
  -- the filesystem root. Preserve genuine absolute paths used by test/build
  -- tooling while translating the repository's /resources/... convention.
  if source:match("^/resources/") then
    return source:sub(2)
  end

  return source
end

local function clear_pdf_media_attributes(attributes)
  for _, name in ipairs(PDF_MEDIA_ATTRIBUTES) do
    attributes[name] = nil
  end
end

local function validate_frame(value, attribute)
  if not value:match("^%d+$") then
    error(attribute .. " must contain non-negative integer frame numbers")
  end
end

local function validate_time(value, attribute)
  local seconds = value:match("^%d+%.?%d*$")
  local clock = value:match("^%d+:%d%d:%d%d%.?%d*$")
    or value:match("^%d+:%d%d%.?%d*$")

  if not seconds and not clock then
    error(attribute .. " must contain seconds or an HH:MM:SS timestamp")
  end
end

-- Parse the author-facing data-pdf-* contract once, rejecting combinations
-- whose precedence would otherwise be surprising.
local function pdf_media_selection(attributes)
  local modes = {
    { attribute = "data-pdf-frame", kind = "frame", multiple = false },
    { attribute = "data-pdf-frames", kind = "frame", multiple = true },
    { attribute = "data-pdf-time", kind = "time", multiple = false },
    { attribute = "data-pdf-times", kind = "time", multiple = true }
  }
  local selected = nil

  for _, mode in ipairs(modes) do
    local value = attributes[mode.attribute]
    if value and trim(value) ~= "" then
      if selected then
        error("PDF media fallback accepts exactly one frame/time selection attribute")
      end

      local values = mode.multiple and split_values(value) or { trim(value) }
      if #values == 0 then
        error(mode.attribute .. " must select at least one frame or time")
      end

      for _, selection in ipairs(values) do
        if mode.kind == "frame" then
          validate_frame(selection, mode.attribute)
        else
          validate_time(selection, mode.attribute)
        end
      end

      selected = {
        attribute = mode.attribute,
        kind = mode.kind,
        values = values
      }
    end
  end

  local poster = attributes["data-pdf-poster"]
  if poster and trim(poster) ~= "" then
    if selected then
      error("PDF media fallback accepts exactly one poster or frame/time selection")
    end

    return { kind = "poster", source = trim(poster) }
  end

  selected = selected or { kind = "first", values = {} }

  local columns = attributes["data-pdf-cols"]
  if columns and trim(columns) ~= "" then
    if not columns:match("^%d+$") or tonumber(columns) < 1 then
      error("data-pdf-cols must be a positive integer")
    end
    selected.columns = tonumber(columns)
  elseif #selected.values > 0 then
    selected.columns = #selected.values
  else
    selected.columns = 1
  end

  if #selected.values > 0 then
    selected.columns = math.min(selected.columns, #selected.values)
  end

  return selected
end

local function normalise_pdf_width(image)
  local width = image.attributes.width
  local picas = width and width:match("^%s*(%d+%.?%d*)%s*pc%s*$")

  if picas then
    local percentage = math.min((tonumber(picas) / 25) * 100, 100)
    image.attributes.width = string.format("%g%%", percentage)
  end

  if image.src:lower():match("%.svg$") then
    document_has_svg = true
  end

  return image
end

local function require_ffmpeg()
  if ffmpeg_is_available == nil then
    ffmpeg_is_available = pcall(pandoc.pipe, "ffmpeg", { "-version" }, "")
  end

  if not ffmpeg_is_available then
    error(FFMPEG_INSTALL_ERROR)
  end
end

local function grid_layout(item_count, columns)
  local positions = {}

  for index = 0, item_count - 1 do
    local column = index % columns
    local row = math.floor(index / columns)
    local x_terms = {}
    local y_terms = {}

    for preceding_column = 0, column - 1 do
      table.insert(x_terms, "w" .. preceding_column)
    end

    for preceding_row = 0, row - 1 do
      table.insert(y_terms, "h" .. (preceding_row * columns))
    end

    local x = #x_terms == 0 and "0" or table.concat(x_terms, "+")
    local y = #y_terms == 0 and "0" or table.concat(y_terms, "+")
    table.insert(positions, x .. "_" .. y)
  end

  return table.concat(positions, "|")
end

local function ffmpeg_arguments(source, selection)
  local arguments = { "-loglevel", "error" }
  local media_path = filesystem_source(source)

  if selection.kind == "first" then
    table.insert(arguments, "-i")
    table.insert(arguments, media_path)
  elseif #selection.values == 1 then
    if selection.kind == "time" then
      table.insert(arguments, "-ss")
      table.insert(arguments, selection.values[1])
      table.insert(arguments, "-i")
      table.insert(arguments, media_path)
    else
      table.insert(arguments, "-i")
      table.insert(arguments, media_path)
      table.insert(arguments, "-vf")
      table.insert(arguments, "select=eq(n\\," .. selection.values[1] .. ")")
    end
  else
    for _, value in ipairs(selection.values) do
      if selection.kind == "time" then
        table.insert(arguments, "-ss")
        table.insert(arguments, value)
      end
      table.insert(arguments, "-i")
      table.insert(arguments, media_path)
    end

    local filters = {}
    local inputs = {}
    if selection.kind == "frame" then
      for index, value in ipairs(selection.values) do
        local input_index = index - 1
        table.insert(filters, string.format(
          "[%d:v]select=eq(n\\,%s)[frame%d]",
          input_index,
          value,
          input_index
        ))
        table.insert(inputs, string.format("[frame%d]", input_index))
      end
    else
      for index = 0, #selection.values - 1 do
        table.insert(inputs, string.format("[%d:v]", index))
      end
    end

    table.insert(filters, table.concat(inputs)
      .. string.format(
        "xstack=inputs=%d:layout=%s:fill=white",
        #selection.values,
        grid_layout(#selection.values, selection.columns)
      ))
    table.insert(arguments, "-filter_complex")
    table.insert(arguments, table.concat(filters, ";"))
  end

  for _, argument in ipairs({
    "-frames:v", "1",
    "-f", "image2pipe",
    "-vcodec", "png",
    "pipe:1"
  }) do
    table.insert(arguments, argument)
  end

  return arguments
end

local function selection_key(selection)
  if selection.kind == "first" then
    return "first"
  end

  return table.concat({
    selection.kind,
    table.concat(selection.values, ","),
    tostring(selection.columns)
  }, ":")
end

local function target_path(source, selection)
  local filename = pandoc.path.filename(source:gsub("[?#].*$", ""))
  local stem = pandoc.path.split_extension(filename)

  if selection.kind == "first" then
    return pandoc.path.join({ "pdf-media", stem .. ".png" })
  end

  local suffix = selection_key(selection):gsub("[^%w]+", "-"):gsub("^%-", ""):gsub("%-$", "")
  return pandoc.path.join({ "pdf-media", stem .. "-" .. suffix .. ".png" })
end

-- ffmpeg writes to stdout, so generated stills/contact sheets enter Pandoc's
-- media bag without creating source-tree sidecars
-- Quarto may show the media bag later as part of its ordinary LaTeX build directory
local function convert_media_for_pdf(image, selection)
  if selection.kind == "poster" then
    image.src = selection.source
    clear_pdf_media_attributes(image.attributes)
    return normalise_pdf_width(image)
  end

  if not is_media_source(image.src) then
    clear_pdf_media_attributes(image.attributes)
    return image
  end

  if is_remote_source(image.src) then
    error("Automatic PDF frame extraction requires a local media file; use data-pdf-poster for remote media")
  end

  require_ffmpeg()

  local key = image.src .. "\0" .. selection_key(selection)
  local target = converted_media[key]
  if not target then
    target = target_path(image.src, selection)
    local ok, png_contents = pcall(
      pandoc.pipe,
      "ffmpeg",
      ffmpeg_arguments(image.src, selection),
      ""
    )

    if not ok or not png_contents or png_contents == "" then
      error("Could not create the requested PDF media fallback for " .. image.src)
    end

    pandoc.mediabag.insert(target, "image/png", png_contents)
    converted_media[key] = target
  end

  image.src = target
  clear_pdf_media_attributes(image.attributes)
  return image
end

local function prepare_pdf_image(image)
  normalise_pdf_width(image)
  local selection = pdf_media_selection(image.attributes)
  return convert_media_for_pdf(image, selection)
end

-- Legacy pages contain raw HTML images to permit bespoke HTML sizing.
-- Parse only a standalone, project-local <img>; unrelated raw HTML passes
-- through untouched.
local function raw_local_image(raw)
  if raw.format ~= "html" then
    return nil
  end

  if not raw.text:lower():match("^%s*<img[%s>]") then
    return nil
  end

  local ok, parsed = pcall(pandoc.read, raw.text, "html")
  if not ok or #parsed.blocks ~= 1 then
    return nil
  end

  local block = parsed.blocks[1]
  if (block.t ~= "Plain" and block.t ~= "Para") or #block.content ~= 1 then
    return nil
  end

  local image = block.content[1]
  if image.t ~= "Image" or not image.src:match("^/resources/") then
    return nil
  end

  local style = image.attributes.style
  local width = style and style:match("width%s*:%s*([^;]+)")
  if width and not image.attributes.width then
    image.attributes.width = width
  end
  image.attributes.style = nil

  return prepare_pdf_image(image)
end

function RawInline(raw)
  if FORMAT:match("latex") then
    return raw_local_image(raw)
  end
end

function Image(image)
  if FORMAT:match("latex") then
    return prepare_pdf_image(image)
  end
end

function Pandoc(document)
  if FORMAT:match("latex") and document_has_svg then
    local ok = pcall(pandoc.pipe, "rsvg-convert", { "--version" }, "")
    if not ok then
      error(SVG_INSTALL_ERROR)
    end
  end

  return document
end
