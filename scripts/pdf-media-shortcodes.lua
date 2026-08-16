-- PDF video-shortcode bridge
--
-- This filter runs before pdf-images.lua so it can see flag Quarto video shortcodes
-- before Quarto converts them into a form that normal Lua filters cannot read.
--
-- For PDF output, it:
-- - only processes videos or links inside a .pdf-media wrapper;
-- - represents eligible local videos as Pandoc Images;
-- - copies the wrapper's data-pdf-* options onto the new image;
-- - leaves remote videos without a poster unchanged, preserving Quarto's normal PDF link fallback.
--
-- pdf-images.lua later extracts the requested frame or contact sheet
-- This also prevents legacy HTML images from being reinterpreted by Quarto as ordinary figures.

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

local function has_class(element, class_name)
  for _, class in ipairs(element.classes) do
    if class == class_name then
      return true
    end
  end

  return false
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

local function copy_pdf_media_attributes(source, target)
  for _, name in ipairs(PDF_MEDIA_ATTRIBUTES) do
    if source[name] then
      target[name] = source[name]
    end
  end
end

local function clear_pdf_media_attributes(attributes)
  for _, name in ipairs(PDF_MEDIA_ATTRIBUTES) do
    attributes[name] = nil
  end
end

-- At pre-AST, Quarto represents {{< video ... >}} as a structured span whose
-- nested parameter spans retain both positional and named shortcode values.
local function video_shortcode(span)
  if not has_class(span, "quarto-shortcode__") then
    return nil
  end

  local positional = {}
  local keyword = {}

  for _, inline in ipairs(span.content) do
    if inline.t == "Span" and has_class(inline, "quarto-shortcode__-param") then
      local value = inline.attributes["data-value"]
      local key = inline.attributes["data-key"]
      if value then
        if key then
          keyword[key] = value
        else
          table.insert(positional, value)
        end
      end
    end
  end

  if positional[1] ~= "video" then
    return nil
  end

  return keyword.src or positional[2], keyword.title
end

-- Only explicitly marked wrappers opt into replacement. Remote media without
-- a poster stays untouched so Quarto can retain its normal PDF link fallback.
local function prepare_video_wrapper(div)
  if not has_class(div, "pdf-media") then
    return nil
  end

  local replaced = false
  local poster = div.attributes["data-pdf-poster"]

  local function replacement(source, caption)
    if not poster and (is_remote_source(source) or not is_media_source(source)) then
      return nil
    end

    local image = pandoc.Image(caption, source)
    copy_pdf_media_attributes(div.attributes, image.attributes)
    replaced = true
    return image
  end

  div = div:walk({
    Link = function(link)
      if replaced then
        return nil
      end

      return replacement(link.target, link.content)
    end,
    Span = function(span)
      if replaced then
        return nil
      end

      local source, title = video_shortcode(span)
      if not source then
        return nil
      end

      local caption = pandoc.Inlines({ pandoc.Str(title or "Video still") })
      return replacement(source, caption)
    end
  })

  if replaced then
    clear_pdf_media_attributes(div.attributes)
  end

  return div
end

function Div(div)
  if FORMAT:match("latex") then
    return prepare_video_wrapper(div)
  end
end
