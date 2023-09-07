.onLoad <- function (libname, pkgname)
{
  check_fonts()

  choose_font()

  invisible()
}


#' Check if font exists
#'
#' @param font typeface to check, defaults to Source Sans 3 and Pro
#'
#' @export

font_exists <- function(font = c("Source Sans 3", "Source Sans Pro")){
  #list of all fonts available
  localfonts <- extrafont::fonts()
  #check if any of the fonts exists
  any(font %in% localfonts)
}

#' Check for Imported Fonts
#'
#' @export

check_fonts <- function(){

  #list of all fonts available
    localfonts <- extrafont::fonts()

  #check if fonts are loaded
    if(is.null(localfonts)) {
      usethis::ui_warn("Before proceeding, you need to import local fonts (only happens once). This may take a few minutes")
      extrafont::font_import(prompt = TRUE)
    }

    #check if font (Source Sans Pro) is installed
    if(!font_exists())
      usethis::ui_warn("Before proceeding, we recommend installing the Source Sans 3 or Pro from USAID Software Center or Google Fonts. In the absense of Source Sans 3 or Pro, we will default to using Arial")

}


#' Check for Imported Fonts
#'
#' @keywords internal
#'
choose_font <- function(){

  is_pc <- .Platform$OS.type == "windows"
  ssp_exists <- font_exists()

  ss_fonts <- c("Source Sans 3", "Source Sans Pro", "Arial")
  localfonts <- extrafont::fonts()
  preferred_font <- localfonts[localfonts %in% ss_fonts]
  preferred_font <- factor(preferred_font, ss_fonts) %>% sort() %>% as.character()
  preferred_font <- preferred_font[1]

  if(is_pc && ssp_exists){
    grDevices::windowsFonts(glitr_font_default = grDevices::windowsFont(preferred_font))
    return(invisible())
  }

  if(is_pc && !ssp_exists){
    grDevices::windowsFonts(glitr_font_default = grDevices::windowsFonts()$sans)
    return(invisible())
  }

  if(!is_pc && ssp_exists){
    grDevices::quartzFonts(glitr_font_default = grDevices::quartzFont(rep(preferred_font, 4)))
    return(invisible())
  }

  if(!is_pc && !ssp_exists){
    grDevices::quartzFonts(glitr_font_default = grDevices::quartzFont(rep(preferred_font, 4)))
    # grDevices::quartzFonts(glitr_font_default = grDevices::quartzFont(rep(grDevices::X11Fonts()$sans, 4)))
    return(invisible())
  }

}
