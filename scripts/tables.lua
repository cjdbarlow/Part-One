-- Add relevant paths and actively debug with mobdebug with ZBS on MacOS (intel)
-- package.path = package.path .. ";/Applications/ZeroBraneStudio.app/Contents/ZeroBraneStudio/lualibs/?.lua;/Applications/ZeroBraneStudio.app/Contents/ZeroBraneStudio/lualibs/?/?.lua"
-- package.cpath = ";/Applications/ZeroBraneStudio.app/Contents/ZeroBraneStudio/bin/clibs53/?.dylib;" .. package.cpath
 
-- require('mobdebug').start()
 
local function hasClass(elem, class)
  for _, value in ipairs(elem.classes) do
    if value == class then
      return true
    end
  end

  return false
end

local function isDrugTable(elem)
  return hasClass(elem, 'drug-table')
end

local max_portrait_content_density = 200

local function utf8CodepointLength(text)
  if utf8 and utf8.len then
    local length = utf8.len(text)

    if length then
      return length
    end
  end

  return #text
end

local function tableContentDensity(elem)
  return utf8CodepointLength(pandoc.utils.stringify(elem)) / #elem.colspecs
end

local function isLandscapeStart(block)
  return block.t == 'RawBlock'
    and block.format == 'latex'
    and block.text:match('\\begin{landscape}')
end

local function isLandscapeEnd(block)
  return block.t == 'RawBlock'
    and block.format == 'latex'
    and block.text:match('\\end{landscape}')
end

local function isExplicitPageBreak(block)
  return block.t == 'RawBlock'
    and block.format == 'latex'
    and block.text:match('\\clearpage')
end

local function latexInlines(inlines)
  local document = pandoc.Pandoc({ pandoc.Plain(inlines) })
  return pandoc.write(document, 'latex'):gsub('%s+$', '')
end

local function allowBreaksAtPunctuation(str)
  if (not str.text:find('/', 1, true) and not str.text:find('-', 1, true))
    or str.text:match('^https?://') then
    return
  end

  local inlines = {}
  local segmentStart = 1

  for i = 1, #str.text do
    local character = str.text:sub(i, i)

    if character == '/' or character == '-' then
      if i > segmentStart then
        inlines[#inlines + 1] = pandoc.Str(str.text:sub(segmentStart, i - 1))
      end

      if character == '/' then
        inlines[#inlines + 1] = pandoc.Str('/')
        inlines[#inlines + 1] = pandoc.RawInline('latex', '\\allowbreak{}')
      else
        inlines[#inlines + 1] = pandoc.RawInline('latex', '\\hyp{}')
      end

      segmentStart = i + 1
    end
  end

  local segment = str.text:sub(segmentStart)

  if segment ~= '' then
    inlines[#inlines + 1] = pandoc.Str(segment)
  end

  return inlines
end

local function allowBreaksInAutolink(link)
  local label = pandoc.utils.stringify(link.content)

  if label ~= link.target or not label:match('^https?://') then
    return
  end

  local characters = {}

  for _, codepoint in utf8.codes(label) do
    characters[#characters + 1] = utf8.char(codepoint)
  end

  local inlines = {}

  for i, character in ipairs(characters) do
    inlines[#inlines + 1] = pandoc.Str(character)

    if i < #characters then
      inlines[#inlines + 1] = pandoc.RawInline('latex', '\\allowbreak{}')
    end
  end

  link.content = inlines
  return link
end

local function landscapeStartBlock()
  return pandoc.RawBlock(
    'latex',
    '\\newgeometry{margin=3cm} \\begin{landscape} '
      .. '\\csname @colroom\\endcsname=\\vsize \\textheight=\\vsize '
      .. '\\csname @colht\\endcsname=\\vsize'
  )
end

local function landscapeEndBlock()
  return pandoc.RawBlock('latex', '\\end{landscape} \\restoregeometry')
end

local function widenFirstColumn(table)
  local totalWidth = 0

  for i = 1, #table.colspecs, 1 do
    totalWidth = totalWidth + (table.colspecs[i][2] or 1 / #table.colspecs)
  end

  local originalFirstWidth = table.colspecs[1][2]
    or totalWidth / #table.colspecs
  local originalRemainingWidth = totalWidth - originalFirstWidth
  table.colspecs[1][2] = totalWidth * 0.30

  for i = 2, #table.colspecs, 1 do
    local originalWidth = table.colspecs[i][2]
      or originalRemainingWidth / (#table.colspecs - 1)
    table.colspecs[i][2] = totalWidth * 0.70
      * originalWidth / originalRemainingWidth
  end

  return table
end

local function needsWideFirstColumn(table)
  local text = pandoc.utils.stringify(table)

  return text:find('Pseudocholinesterase deficiency', 1, true)
    or text:find('Anticholinesterases', 1, true)
end

local function tableBlocks(elem, drugTable, landscape)
  local blocks = {}

  if landscape then
    blocks[#blocks + 1] = landscapeStartBlock()
  end

  if drugTable then
    blocks[#blocks + 1] = pandoc.RawBlock(
      'latex',
      '\\begingroup\\let\\raggedright\\RaggedRight'
    )
  end

  blocks[#blocks + 1] = elem

  if drugTable then
    blocks[#blocks + 1] = pandoc.RawBlock('latex', '\\endgroup')
  end

  if landscape then
    blocks[#blocks + 1] = landscapeEndBlock()
  end

  return blocks
end

function Div(elem)
  if FORMAT:match('latex') then
    if hasClass(elem, 'pdf-body-table') then
      return elem.content
    elseif hasClass(elem, 'landscape-table') then
      return {
        landscapeStartBlock(),
        elem,
        landscapeEndBlock()
      }
    elseif hasClass(elem, 'pdf-page-break-before') then
      return {
        pandoc.RawBlock('latex', '\\clearpage'),
        elem
      }
    end
  end
end

function Blocks(blocks)
  local result = {}
  local i = 1
  local pendingChapterMark = nil

  while i <= #blocks do
    -- A page-break wrapper follows its source heading in the AST. Move the
    -- break ahead of the heading so both start together on the fresh page.
    if blocks[i].t == 'Header'
      and i < #blocks
      and isExplicitPageBreak(blocks[i + 1]) then
      result[#result + 1] = blocks[i + 1]
      result[#result + 1] = blocks[i]
      i = i + 2
    -- Landscape environments force a new page. Start the environment before
    -- an immediately preceding heading so the heading is not stranded alone.
    elseif blocks[i].t == 'Header'
      and i < #blocks
      and isLandscapeStart(blocks[i + 1]) then
      result[#result + 1] = blocks[i + 1]
      result[#result + 1] = blocks[i]

      if blocks[i].level == 1 then
        pendingChapterMark = latexInlines(blocks[i].content)
        result[#result + 1] = pandoc.RawBlock(
          'latex',
          '\\chaptermark{' .. pendingChapterMark .. '}'
            .. '\\renewcommand{\\rightmark}{' .. pendingChapterMark .. '}'
        )
      end

      i = i + 2
    elseif blocks[i].t == 'Header'
      and blocks[i].level > 1
      and i < #blocks
      and blocks[i + 1].t == 'Table' then
      result[#result + 1] = pandoc.RawBlock(
        'latex',
        '\\Needspace{12\\baselineskip}'
      )
      result[#result + 1] = blocks[i]
      i = i + 1
    else
      result[#result + 1] = blocks[i]

      if pendingChapterMark and isLandscapeEnd(blocks[i]) then
        result[#result + 1] = pandoc.RawBlock(
          'latex',
          '\\chaptermark{' .. pendingChapterMark .. '}'
        )
        pendingChapterMark = nil
      end

      i = i + 1
    end
  end

  return result
end

function Table (elem)
  -- html sorts itself out
  if FORMAT:match 'latex' then
    
    -- Get the number of columns of the table
    num_col = #elem.colspecs
    -- Get number of rows across all table bodies. Excludes header rows.
    num_rows = 0

    for _, body in ipairs(elem.bodies) do
      num_rows = num_rows + #body.body
    end

    num_total = num_col + num_rows
    
    -- Set maximum number of columns that a table can have before...
    max_natural_width = 2 -- number of columns before we intervene
    max_full_col = 3 -- number of columns before we make it a fullwidth table
    max_landscape_cols = 5 -- number of columns before we rotate the table
    max_landscape_all = 22 -- number of everything (rows plus columns) before we make the table landscape
    
    -- Get the full table width
    -- (Should be 1 in most cases but not sure if pandoc/authors can do funny things so we will calculate it,)
    -- (further debugging has discovered that pandoc doesn't always provide colwidths, so we check that they're there and assume 1 if they're not)
    local hasColumnWidths = elem.colspecs[1][2] ~= nil

    if not hasColumnWidths then
      x = 1
    else
      x = 0
      for i = 1, num_col, 1 do
        x = x + elem.colspecs[i][2]
      end
    end
    
    local drugTable = isDrugTable(elem)
    local widenFirst = not drugTable
      and num_col > 1
      and needsWideFirstColumn(elem)
    local forceLandscape = hasClass(elem, 'landscape')
    local contentDensity = tableContentDensity(elem)
    local denseWideTable = num_col >= 4
      and contentDensity > max_portrait_content_density

    if drugTable then
      elem = elem:walk({ Str = allowBreaksAtPunctuation })
      elem = elem:walk({ Link = allowBreaksInAutolink })

      -- Pander's inferred widths may sum to less than one, which leaves a
      -- narrow table despite available page width. Drug tables always use the
      -- full line: one quarter for row headers and the remainder for drugs.
      elem.colspecs[1][2] = 0.25

      for i = 2, num_col, 1 do
        elem.colspecs[i][2] = 0.75 / (num_col - 1)
      end
    elseif widenFirst then
      elem = widenFirstColumn(elem)
    elseif not hasColumnWidths then
      for i = 1, num_col, 1 do
        elem.colspecs[i][2] = x/num_col
      end
    end
    
    -- do the thing
    if forceLandscape then
      return tableBlocks(elem, drugTable, true)

    elseif num_col <= max_natural_width then
      return tableBlocks(elem, drugTable, false)
      
    elseif num_col > max_natural_width and num_col <= max_full_col then
      return tableBlocks(elem, drugTable, false)

    elseif num_col > max_full_col then
      -- Make the first column (usually a title column in my use-case, and gets shafted by pandoc regularly) fixed width, and divide the width between the rest)
      -- We don't subtract the first column width from the total available width because 0.2 seems to fill the margin nicely and gives the rest of the table more space
      if not drugTable then
        elem.colspecs[1][2] = x * 0.2

        for i = 2, num_col, 1 do
          elem.colspecs[i][2] = x * 0.8 / (num_col - 1)
        end
      end
      
      if num_col > max_landscape_cols
        or num_total > max_landscape_all
        or denseWideTable then
        return tableBlocks(elem, drugTable, true)
      else
        -- The book is single-column. Leaving Pandoc's longtable in the normal
        -- flow preserves source order and permits page breaks when needed.
        return tableBlocks(elem, drugTable, false)
      end
    end
  end
end
