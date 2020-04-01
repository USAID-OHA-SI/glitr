#' Check for Imported Fonts
#'
#' @export

check_fonts <- function(){

  #list of all fonts available
    localfonts <- extrafont::fonts()

  #check if fonts are loaded
    if(is.null(localfonts)) {
      usethis::ui_warn("Before proceeding, need to import local fonts (only happens once). This may take a few minutes")
      extrafont::font_import(prompt = TRUE)
    }

  #check if font (Source Sans Pro) is installed
    if(!"Source Sans Pro" %in% localfonts)
      usethis::ui_warn("Before proceeding, install font: Source Sans Pro")

}
