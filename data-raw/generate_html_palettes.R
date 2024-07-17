#update colors on site

# DEPENDENCIES ------------------------------------------------------------

library(tidyverse)
# library(glitr)
load_all()

names(si_palettes)

pal_num <- 1

# FUNCTION - PREP PALETTE TEXT --------------------------------------------

html_fcn <- function(pal_num){

  pal <- names(si_palettes[pal_num])

  col <- si_palettes[pal_num] %>% unlist() #%>% rev()

  col_html <- col %>%
    {str_glue('<span style="background-color: {.}">{.}</span>')} %>%
    str_flatten(collapse = " ")

  str_glue("- {pal}: {col_html}")
}

# SETUP PALETTES FOR EXPORT -----------------------------------------------

c(1:32, 48:49, 74) %>%
  map(html_fcn) %>%
  unlist() %>%
  str_flatten(collapse = "\n") %>%
  clipr::write_clip()
