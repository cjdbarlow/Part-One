-- Keep tables scrollable; page-wide placement is only for ordinary content.
local function wrapTable(table, allowPageColumn, alignLabelColumns)
  if FORMAT:match("html") then
    local classes = { "table-responsive" }

    if alignLabelColumns and #table.colspecs == 2 then
      -- Markdown grid widths reflect source line lengths, not the label layout.
      table.colspecs[1][2] = 0.25
      table.colspecs[2][2] = 0.75
      table.classes:insert("answer-label-table")
    end

    if allowPageColumn and #table.colspecs >= 4 then
      classes[#classes + 1] = "column-page-right"
    end

    return pandoc.Div({ table }, pandoc.Attr("", classes))
  end

  return table
end

return {
  traverse = "topdown",
  Div = function(div)
    if FORMAT:match("html") and
        (div.classes:includes("exam-answer") or div.classes:includes("structure-table")
          or div.classes:includes("exam-question")) then
      -- Quarto propagates column-page-right to ancestors, which breaks the
      -- answer grid and question box. Wrap these tables locally first.
      local alignLabelColumns = div.classes:includes("exam-answer")
        and div.classes:includes("answer-label-tables")
      return div:walk({
        Table = function(table) return wrapTable(table, false, alignLabelColumns) end
      }), false
    end
  end,
  Table = function(table) return wrapTable(table, true), false end
}
