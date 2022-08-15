.onLoad <- function (libname, pkgname)
{
  check_fonts()

  choose_font()

  invisible ()
}



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
      usethis::ui_warn("Before proceeding, we recommend installing the Source Sans Pro from USAID Software Center or Google Fonts. In the absense of Source Sans Pro, we will default to using Arial")

}


#' Check for Imported Fonts
#'
#' @keywords internal
#'
choose_font <- function(){

  localfonts <- extrafont::fonts()

  ssp_exists <- "Source Sans Pro" %in% localfonts

  if(.Platform$OS.type == "windows" && ssp_exists){
    windowsFonts(glitr_font_default = windowsFont("Source Sans Pro"))
    return(invisible())
  }

  if(.Platform$OS.type == "windows" && !ssp_exists){
    windowsFonts(glitr_font_default = windowsFonts()$sans)
    return(invisible())
  }

  if(.Platform$OS.type == "unix" && ssp_exists){
    grDevices::quartzFonts(glitr_font_default = c("Source Sans Pro"))
    return(invisible())
  }

  if(.Platform$OS.type == "unix" && !ssp_exists){
    grDevices::quartzFonts(glitr_font_default = grDevices::quartzFonts("sans"))
    return(invisible())
  }
  # default_font <- ifelse(ssp_exists, "Source Sans Pro", "Arial")
  #
  # options("glitr_font" = default_font)
}
