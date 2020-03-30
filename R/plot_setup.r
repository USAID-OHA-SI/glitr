#' @title Runs globals for plot configuration
#'
#' @description Global configurations arguments generated here.
#' @param
#' @export
#'


# TODO: INCLUDE FONT CHECK FUNCTION BEFORE CREATING SI_STYLE?
  # font_check function to check for installed fonts or do we set within si_style
  # Choosing a default that

  #        font_check <- function(font_family = font) {
  #          data_fonts <- systemfonts::system_fonts()
  #          tolower(font_family) %in% tolower(data_fonts$family)
  #        }
  #
  #   # Need if function to test for presence of fonts.
  #     if(font_check == TRUE) {
  #       print(str_c(font, " is installed."))
  #     } else {
  # #TODO: DETERMINE DEFAULT FONT TO USE
  #     }



# TODO: NEED A HELPER FUNCTION THAT DOES THE FONT CHECK, IF FONT DOESN'T EXIST IT DEFAULTS TO
# A BUILT IN FONT AVAILABLE ON MACS AND PCS
# FUNCTION RETURNS DEFAULT FONT IN THE SI_STYLE.R FUNCTION IF SOURCE SANS PRO DOESN'T EXIST

  # FONT SETUP - caused issues w/ build. moving into a default for now
    # HAve to set font more than once b/c of Source Sans many diff types
    # font_title <- "Arial"    #Source Sans Pro"
    # font_subtitle <- "Arial" #Source Sans Pro SemiBold"
    # font_plot <-  "Arial"    #Source Sans Pro Light"
    # font_caption <- "Arial"  #Source Sans Pro Light"

 # TODO: Determine if these should just be set as default function values or helpers?
 # PLOT GRIDE AND TEXT COLORS
    # Plot font colors and grid lines
    color_plot_text <- "#505050"
    color_title <- "#202020"
    color_caption <- "#909090"
    color_gridline <- "#D3D3D3"

  # DEFAULT CAPTIONS
    caption <- paste("OHA SI TEAM", " | ", "CREATED ON ", Sys.Date(), "", sep = "")
