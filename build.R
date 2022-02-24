# HTML
bookdown::render_book("content/index.rmd", "bookdown::gitbook", clean = TRUE)

# PDF
bookdown::render_book("content/index.Rmd", "bookdown::titfl_book", clean = TRUE)
