-- Add a bootstrap class to make them responsive
-- Easier than slapping a div class around them
function Table(table)
  if FORMAT:match("html") then
    return pandoc.Div({ table }, pandoc.Attr("", { "table-responsive" }))
  end

  return table
end
