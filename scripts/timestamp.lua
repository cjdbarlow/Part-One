-- Script to append a 'last modified' time to each page
-- date is the date the file was modified if it has untracked changes, or the date of the last git commit if it doesn't

local function trim(value)
  return value:match("^%s*(.-)%s*$")
end

local function project_relative_path(path, project_dir)
  local prefix = project_dir:gsub("[/\\]+$", "") .. "/"
  local normalised_path = path:gsub("\\", "/")
  local normalised_prefix = prefix:gsub("\\", "/")

  if normalised_path:sub(1, #normalised_prefix) == normalised_prefix then
    return normalised_path:sub(#normalised_prefix + 1)
  end

  return normalised_path
end

local function git_output(project_dir, arguments)
  local command = { "-C", project_dir }

  for _, argument in ipairs(arguments) do
    table.insert(command, argument)
  end

  local succeeded, output = pcall(pandoc.pipe, "git", command, "")
  if not succeeded then
    return nil
  end

  return trim(output)
end

local function last_updated_date(source_path, filesystem_date)
  local project_dir = quarto.project.directory
  if not project_dir then
    return filesystem_date
  end

  local source_relative = project_relative_path(source_path, project_dir)
  local status = git_output(project_dir, {
    "status",
    "--porcelain",
    "--untracked-files=all",
    "--",
    source_relative
  })

  if status == nil or status ~= "" then
    return filesystem_date
  end

  local committed_date = git_output(project_dir, {
    "log",
    "-1",
    "--format=%ad",
    "--date=format:%d/%m/%Y",
    "--",
    source_relative
  })

  if committed_date and committed_date ~= "" then
    return committed_date
  end

  return filesystem_date
end

function Pandoc(document)
  if not quarto.doc.is_format("html") then
    return document
  end

  local filesystem_date = pandoc.utils.stringify(document.meta["date-modified"] or "")
  document.meta["date-modified"] = nil

  if filesystem_date == "" or not quarto.doc.input_file then
    return document
  end

  local date = last_updated_date(quarto.doc.input_file, filesystem_date)
  local content = pandoc.Inlines({
    pandoc.Str("Page"),
    pandoc.Space(),
    pandoc.Str("last"),
    pandoc.Space(),
    pandoc.Str("updated"),
    pandoc.Space(),
    pandoc.Str("on"),
    pandoc.Space(),
    pandoc.Str(date)
  })

  document.blocks:insert(pandoc.Div(
    { pandoc.Plain(content) },
    pandoc.Attr("", { "page-last-updated" })
  ))

  return document
end
