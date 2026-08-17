-- Legacy raw-HTML image bridge for multi-file PDF books
--
-- Raw HTML is discarded when Quarto assembles book chapters
-- This occurs before ordinary Lua filters run
-- This filter converst <img> tags into Pandoc Images at thepre-AST stage so the later pdf-images.lua filter can process them normally

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

  return image
end

function RawInline(raw)
  if FORMAT:match("latex") then
    return raw_local_image(raw)
  end
end
