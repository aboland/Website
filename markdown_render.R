# Script to render all markdown pages


 # Homepage
rmarkdown::render("public_html/index.Rmd")

 # Tidy Tuesday homepage
rmarkdown::render("public_html/tt_home.Rmd")

 # Tidy Tuesday docs
tt_pages <- list.files("public_html/tidytuesday/", pattern = ".Rmd", full.names = T)

for(page in tt_pages)
  rmarkdown::render(page)