local collectedReferences = {}

local function hasClass(element, class)
  return element.classes:includes(class)
end

local function normaliseIdentifier(text)
  local lowerText = text:lower()
  local doi = lowerText:match('10%.%d+/%S+')

  if doi then
    return 'doi:' .. doi:gsub('[%.,;:%)]$', '')
  end

  local url = lowerText:match('https?://%S+')

  if url then
    return 'url:' .. url:gsub('[%.,;:%)]$', '')
  end

  return nil
end

local function normaliseReference(text)
  local lowerText = text:lower()
  return 'text:' .. lowerText:gsub('%s+', ' '):gsub('^%s+', ''):gsub('%s+$', '')
end

local function transformDrugTable(drugTable)
  drugTable.classes:insert('drug-table')

  for _, row in ipairs(drugTable.head.rows) do
    table.remove(row.cells, 1)
  end

  local transformedBodies = {}

  for _, body in ipairs(drugTable.bodies) do
    local contentRows = {}
    local columnCount = #drugTable.colspecs - 1

    local function addContentBody()
      if #contentRows > 0 then
        transformedBodies[#transformedBodies + 1] = pandoc.TableBody(
          contentRows,
          {},
          1,
          pandoc.Attr()
        )
        contentRows = {}
      end
    end

    for _, row in ipairs(body.body) do
      local sectionCell = row.cells[1]
      local section = pandoc.utils.stringify(sectionCell)
      local rowHeader = pandoc.utils.stringify(row.cells[2])

      if section ~= '' and rowHeader ~= '' then
        addContentBody()
        local sectionRow = pandoc.Row({
          pandoc.Cell(
            sectionCell.contents,
            pandoc.AlignDefault,
            1,
            columnCount,
            pandoc.Attr('', { 'drug-table-section' })
          )
        })
        transformedBodies[#transformedBodies + 1] = pandoc.TableBody(
          { sectionRow },
          {},
          0,
          pandoc.Attr()
        )
      end

      table.remove(row.cells, 1)

      if section ~= '' and rowHeader == '' then
        row.cells[1].contents = sectionCell.contents
      end

      row.cells[1].attributes.scope = 'row'
      contentRows[#contentRows + 1] = row
    end

    addContentBody()
  end

  drugTable.bodies = transformedBodies

  table.remove(drugTable.colspecs, 1)

  return drugTable
end

local function unwrapDrugTableSource(div)
  if not hasClass(div, 'drug-table-source') then
    return nil
  end

  local sourceTable = nil

  for _, block in ipairs(div.content) do
    if block.t == 'Table' then
      if sourceTable then
        return nil
      end
      sourceTable = block
    end
  end

  if not sourceTable then
    return nil
  end

  return { transformDrugTable(sourceTable) }
end

local function collectReferenceMarker(div)
  if not hasClass(div, 'drug-references') then
    return nil
  end

  for _, block in ipairs(div.content) do
    if block.t == 'BulletList' or block.t == 'OrderedList' then
      for _, item in ipairs(block.content) do
        collectedReferences[#collectedReferences + 1] = item
      end
    end
  end

  return {}
end

local function referenceKeys(item)
  local keys = {}
  local itemDocument = pandoc.Pandoc(item)

  itemDocument:walk({
    Link = function(link)
      local identifier = normaliseIdentifier(link.target)
      if identifier then
        keys[#keys + 1] = identifier
      end
    end
  })

  keys[#keys + 1] = normaliseReference(pandoc.utils.stringify(item))

  return keys
end

local function referenceItems(block)
  if block.t == 'BulletList' or block.t == 'OrderedList' then
    return block.content
  end

  if block.t ~= 'Para' and block.t ~= 'Plain' then
    return { { block } }
  end

  local items = {}
  local inlines = {}

  local function addItem()
    if #inlines > 0 then
      items[#items + 1] = { pandoc.Plain(inlines) }
      inlines = {}
    end
  end

  for _, inline in ipairs(block.content) do
    if inline.t == 'LineBreak' or inline.t == 'SoftBreak' then
      addItem()
    else
      inlines[#inlines + 1] = inline
    end
  end

  addItem()
  return items
end

local function isReferenceLayoutBlock(block)
  local isEmptyParagraph = (block.t == 'Para' or block.t == 'Plain')
    and pandoc.utils.stringify(block):match('^%s*$')

  return block.t == 'RawBlock'
    or block.t == 'HorizontalRule'
    or block.t == 'Null'
    or (block.t == 'Div' and hasClass(block, 'hidden'))
    or isEmptyParagraph
end

local function appendReferences(document, references)
  local seen = {}
  local referencesHeader = nil
  local referencesHeaderLevel = nil
  local referencesList = nil
  local referencesListIndex = nil
  local lastReferenceContentIndex = nil

  for index, block in ipairs(document.blocks) do
    if block.t == 'Header'
      and pandoc.utils.stringify(block.content):lower() == 'references' then
      referencesHeader = index
      referencesHeaderLevel = block.level
      break
    end
  end

  if referencesHeader then
    for index = referencesHeader + 1, #document.blocks do
      local block = document.blocks[index]

      if block.t == 'Header' and block.level <= referencesHeaderLevel then
        break
      end

      if not isReferenceLayoutBlock(block) then
        lastReferenceContentIndex = index
      end

      if block.t == 'BulletList' or block.t == 'OrderedList' then
        referencesList = block
        referencesListIndex = index
      end

      if not isReferenceLayoutBlock(block) then
        for _, item in ipairs(referenceItems(block)) do
          for _, key in ipairs(referenceKeys(item)) do
            seen[key] = true
          end
        end
      end
    end
  end

  local additions = {}
  for _, item in ipairs(references) do
    local keys = referenceKeys(item)
    local duplicate = false

    for _, key in ipairs(keys) do
      if seen[key] then
        duplicate = true
        break
      end
    end

    if not duplicate then
      for _, key in ipairs(keys) do
        seen[key] = true
      end
      additions[#additions + 1] = item
    end
  end

  if #additions == 0 then
    return document
  end

  if referencesList and referencesListIndex == lastReferenceContentIndex then
    for _, item in ipairs(additions) do
      referencesList.content[#referencesList.content + 1] = item
    end
  elseif referencesHeader then
    table.insert(
      document.blocks,
      (lastReferenceContentIndex or referencesHeader) + 1,
      pandoc.OrderedList(additions)
    )
  else
    document.blocks[#document.blocks + 1] = pandoc.Header(
      2,
      { pandoc.Str('References') },
      pandoc.Attr('references')
    )
    document.blocks[#document.blocks + 1] = pandoc.OrderedList(additions)
  end

  return document
end

local function processChapter(blocks)
  collectedReferences = {}
  local chapter = pandoc.Pandoc(blocks):walk({
    Div = function(div)
      return unwrapDrugTableSource(div) or collectReferenceMarker(div)
    end
  })

  return appendReferences(chapter, collectedReferences).blocks
end

function Pandoc(document)
  local outputBlocks = {}
  local chapterBlocks = {}

  local function flushChapter()
    if #chapterBlocks == 0 then
      return
    end

    for _, block in ipairs(processChapter(chapterBlocks)) do
      outputBlocks[#outputBlocks + 1] = block
    end

    chapterBlocks = {}
  end

  for _, block in ipairs(document.blocks) do
    if block.t == 'Header' and block.level == 1 then
      flushChapter()
    end

    chapterBlocks[#chapterBlocks + 1] = block
  end

  flushChapter()
  document.blocks = outputBlocks

  return document
end
