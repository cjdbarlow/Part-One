-- Keep every table locally scrollable and allow wide tables to use Quarto's
-- right-page layout column.
function Table(table)
  if FORMAT:match("html") then
    local classes = { "table-responsive" }

    if #table.colspecs >= 4 then
      classes[#classes + 1] = "column-page-right"
    end

    return pandoc.Div({ table }, pandoc.Attr("", classes))
  end

  return table
end
