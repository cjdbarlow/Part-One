# Keep the rendered book in sync with the canonical DrugBase database

siblingPath = "../drugbase/database/drugbase.Rds"
localPath = "resources/drugbase.Rds"
remoteUrl = paste0(
  "https://raw.githubusercontent.com/cjdbarlow/drugbase/",
  "master/database/drugbase.Rds"
)

if (file.exists(siblingPath)) {
  copySucceeded = file.copy(siblingPath, localPath, overwrite = TRUE)

  if (!copySucceeded) {
    stop("Unable to copy the local DrugBase database to ", localPath)
  }
} else {
  download.file(remoteUrl, destfile = localPath, mode = "wb")
}
