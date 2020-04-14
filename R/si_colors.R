#' SI-themed color palettes
#'
#' A collection of color palettes gathered by the si team
#' @title SI-theme color palettes
#' @description Sets of color palettes that have been collected by the SI team
#' @importFrom scales show_col
#' @export
#' @examples
#' # List the palettes available
#' \dontrun{
#' names(si_palettes)
#'
#' # Show palettes interpolated
#' si_pal("carto_div_earth", n = 10) %>% scales::show_col(labels = FALSE)
#' si_pal("carto_div_earth", n = 100) %>% scales::show_col(labels = FALSE)
#'}

si_palettes <- list(

    contrast = c("#E4F4EA", "#364352", "#768491", "#C5CAD0", "#BE311F"),
    compliment = c("#6F472E", "#6F827C", "#E4F4EA", "#E4F4EA", "#E4F4EA"),

    outbreak_or = c("#F4E5D2", "#FED79C", "#FBA529", "#FF6600"),
    seablue = c("#4FAFB6", "#98CBD0", "#D5EAEB", "#086EA1"),
    seablue_text = c("#00949D", "#58B2BA", "#B2D8DD", "#2476A6"),

  # Vega palettes
    category10 = c(
      "#1f77b4", "#ff7f0e", "#2ca02c", "#d62728", "#9467bd", "#8c564b",
      "#e377c2", "#7f7f7f", "#bcbd22", "#17becf"
    ),

    category20 = c(
      "#1f77b4", "#aec7e8", "#ff7f0e", "#ffbb78", "#2ca02c", "#98df8a",
      "#d62728", "#ff9896", "#9467bd", "#c5b0d5", "#8c564b", "#c49c94",
      "#e377c2", "#f7b6d2","#7f7f7f", "#c7c7c7", "#bcbd22", "#dbdb8d",
      "#17becf", "#9edae5"
    ),

    category20b = c(
      "#393b79", "#5254a3", "#6b6ecf", "#9c9ede", "#637939",  "#8ca252",
      "#b5cf6b", "#cedb9c", "#8c6d31", "#bd9e39", "#e7ba52", "#e7cb94",
      "#843c39", "#ad494a", "#d6616b", "#e7969c", "#7b4173",
      "#a55194", "#ce6dbd", "#de9ed6"),

    category20c = c(
      "#3182bd", "#6baed6", "#9ecae1", "#c6dbef", "#e6550d", "#fd8d3c",
      "#fdae6b", "#fdd0a2", "#31a354", "#74c476", "#a1d99b", "#c7e9c0",
      "#756bb1", "#9e9ac8", "#bcbddc", "#dadaeb", "#636363", "#969696",
      "#bdbdbd", "#d9d9d9"),

  # Cartodb colors
    carto_burgyl = c("#fbe6c5", "#f5ba98", "#ee8a82", "#dc7176", "#c8586c", "#9c3f5d", "#70284a"),
    carto_sunset = c("#fcde9c", "#faa476", "#f0746e", "#e34f6f", "#dc3977", "#b9257a", "#7c1d6f"),
    carto_teal = c("#d1eeea", "#a8dbd9", "#85c4c9", "#68abb8", "#4f90a6", "#3b738f", "#2a5674"),
    carto_dmint = c("#d2fbd4", "#a5dbc2", "#7bbcb0", "#559c9e", "#3a7c89", "#235d72", "#123f5a"),
    carto_sunset = c("#fcde9c", "#faa476", "#f0746e", "#e34f6f", "#dc3977", "#b9257a", "#7c1d6f"),
    carto_mint = c("#e4f1e1", "#b4d9cc", "#89c0b6", "#63a6a0", "#448c8a", "#287274", "#0d585f"),
    carto_brown = c("#ede5cf", "#e0c2a2", "#d39c83", "#c1766f", "#a65461", "#813753", "#541f3f"),

  # Carto diverging
    carto_div_armyrose = c("#798234", "#a3ad62", "#d0d3a2", "#fdfbe4", "#f0c6c3", "#df91a3", "#d46780"),
    carto_div_fall = c("#3d5941", "#778868", "#b5b991", "#f6edbd", "#edbb8a", "#de8a5a", "#ca562c"),
    carto_div_geyser = c("#008080", "#70a494", "#b4c8a8", "#f6edbd", "#edbb8a", "#de8a5a", "#ca562c"),
    carto_div_temps = c("#009392", "#39b185", "#9ccb86", "#e9e29c", "#eeb479", "#e88471", "#cf597e"),
    carto_div_teal = c("#009392", "#72aaa1", "#b1c7b3", "#f1eac8", "#e5b9ad", "#d98994", "#d0587e"),
    carto_div_tropic = c("#009B9E", "#42B7B9", "#A7D3D4", "#F1F1F1", "#E4C1D9", "#D691C1", "#C75DAB"),
    carto_div_earth = c("#A16928", "#bd925a", "#d6bd8d", "#edeac2", "#b5c8b8", "#79a7ac", "#2887a1")

)


#' Chooses palette to use with ggplot2
#'
#' @description Gnerate a palette by linear interpolation.
#' @title Palette interpolation
#' @param pal_name name of the palette
#' @param n number of interpolation points
#' @param reverse if true, reverses order
#' @param alpha controls opacity of color
#' @export
#' @import grDevices
#' @importFrom scales show_col
#'
#' @examples
#' \dontrun{
#' #
#' View different interpolations of palettes
#' si_pal("outbreak_or", n = 5) %>%  show_col()
#' si_pal("outbreak_or", n = 10) %>% show_col()
#' si_pal("outbreak_or", n = 100) %>% show_col(labels = FALSE)
#'}


  si_pal <- function(pal_name, alpha = 1, reverse = FALSE, n = 5) {

    pal <- si_palettes[[pal_name]]

      if (reverse) {
      pal <- rev(si_palettes[[pal_name]])
    }

    pal <- colorRampPalette(pal, alpha)(n)


     return(pal)
  }




# TODO: AC or BK, if you know a better way of doing this, let me know.
#' @export
  si_blue = "#2166AC"
#' @export
  si_lblue = "#67A9CF"
#' @export
  si_dgrey = "#595959"
#' @export
  si_grey10K = "#bfbfbf"
#' @export
  si_lorange = "#f5b9a1"
#' @export
  si_orange = "#EF8A62"
#' @export
  si_dorange = "#D95709"
#' @export
  wapo_lpurple = "#C7ABC7"
#' @export
  wapo_lorange = "#F4AB67"
#' @export
  wapo_pushpop = "#FEC693"
#' @export
  wapo_lgreen = "#B5D1D0"
#' @export
  wapo_lorange2 = "#EFCAB4"
#' @export
  wapo_dorange = "#DC7C33"
#' @export
  wapo_lblue = "#B4D5E5"
#' @export
  wapo_dblue = "#3579A8"
#' @export
  wapo_lmauve = "#D8B3D4"
#' @export
  wapo_dmauve = "#B68AB8"

  #grays
#' @export
  grey10k = "#E6E7E8"
#' @export
  grey20k = "#d1d3d4"
#' @export
  grey30k = "#BCBEC0"
#' @export
  grey40k = "#a7a9ac"
#' @export
  grey50k = "#939598"
#' @export
  grey60k = "#808s85"
#' @export
  grey70k = "#6d6e71"
#' @export
  grey80k = "#58595b"
#' @export
  grey90k = "414042"

# Inspiration from media outets
#' @export
  wapo_lpurple = "#C7ABC7"
#' @export
  wapo_lorange = "#F4AB67"
#' @export
  wapo_pushpop = "#FEC693"
#' @export
  wapo_lgreen = "#B5D1D0"
#' @export
  wapo_lorange2 = "#EFCAB4"
#' @export
  wapo_dorange = "#DC7C33"
#' @export
  wapo_lblue = "#B4D5E5"
#' @export
  wapo_dblue = "#3579A8"
#' @export
  wapo_lmauve = "#D8B3D4"
#' @export
  wapo_dmauve = "#B68AB8"

# USAID specific
#' @export
USAID_blue = "#002F6C"

#' @export
USAID_red = "#BA0C2F"

#' @export
USAID_medblue = "#0067B9"

#' @export
USAID_ltblue = "#A7C6ED"

#' @export
USAID_dkred = "#651D32"

#' @export
USAID_black = "#212721"

#' @export
USAID_lgrey = "#CFCDC9"

#' @export
USAID_mgrey = "#8C8985"

#' @export
USAID_dgrey = "#6C6463"

