# Download the DrugBase file from github, assuming it does not exist already

file_url = "https://github.com/cjdbarlow/drugbase/database/drugbase.Rds"
local_path = "resources/drugbase.Rds"

if (!file.exists(local_path)) {
  download.file(file_url, destfile = local_path)
}