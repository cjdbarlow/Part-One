-- Wrap each HTML table produced by Quarto in the bootstram .table-responsive class
-- Means wide tables scroll within the page instead of widening the whole layout
function Table(table)
  if FORMAT:match("html") then
    return pandoc.Div({ table }, pandoc.Attr("", { "table-responsive" }))
  end

  return table
end
