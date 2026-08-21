-- Removes the H1 from a generated page in non-HTML outputs

function Header(header)
  if header.level ~= 1 or FORMAT:match("html") then
    return nil
  end

  for _, class in ipairs(header.classes) do
    if class == "html-only-page" then
      return {}
    end
  end
end
