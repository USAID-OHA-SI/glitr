#' @title SI Colors
#' @name si_colors
#' @title SI custom colors
#' @description Defines custom colors to use in SI plots
#' @importFrom scales show_col
#' @keywords SI colors
#' @export
#' @examples
#' #Preview colors
#'   #library(scales)
#'   #show_col(c(wapo_lblue, wapo_dblue, wapo_lmauve, wapo_dmauve))
#'
#' # Preview colors as generated palette
#'   #new_palette <- colorRampPalette(c(si_lorange, si_dorange))(12)
#'   #show_col(new_palette)
#'
#' # Apply the new color palette to a plot with the si_style theme
#'   #ggplot(iris, aes(Sepal.Length, Sepal.Width, fill = Petal.Length)) +
#'   #geom_point(shape = 21, color = grey50, size = 3) +
#'   #scale_fill_gradientn(colours = new_palette) + si_style()


# TODO: determine function to plot colors and load them when package loads
# Flesh out colors that will be default
# TODO: Are these helpers? Should objects appear on load or be called w/ a function?
si_colors <- function() {

  # USAID Specific
  USAID_blue <- "#002F6C"
  USAID_red <- "#BA0C2F"
  USAID_medblue <- "#0067B9"
  USAID_ltblue <- "#A7C6ED"
  USAID_dkred <- "#651D32"
  USAID_black <- "#212721"
  USAID_lgrey <- "#CFCDC9"
  USAID_mgrey <- "#8C8985"
  USAID_dgrey <- "#6C6463"

  # OHA Specific
  si_blue <- "#2166AC"
  si_lblue <- "#67A9CF"

  si_dgrey <- "#595959"
  si_grey10K <- "#bfbfbf"
  grey20 <- "#202020"
  grey30 <- "#303030"
  grey40 <- "#404040"
  grey50 <- "#505050"
  grey60 <- "#606060"
  grey70 <- "#707070"
  grey80 <- "#808080"
  grey90 <- "#909090"
  greyA0 <- "#A0A0A0"
  greyB <- "#B0B0B0"
  greyC <- "#C0C0C0"
  greyD <- "#D0D0D0"
  greyE <- "#E0E0E0"
  greyF <- "#F0F0F0"
  greyFF <- "#F5F5F5"

  # Inspiration from media outlets
  wapo_lpurple <- "#C7ABC7"
  wapo_lorange <- "#F4AB67"
  wapo_pushpop <- "#FEC693"

  wapo_lgreen <- "#B5D1D0"
  wapo_lorange2 <- "#EFCAB4"
  wapo_dorange <- "#DC7C33"

  wapo_lblue <- "#B4D5E5"
  wapo_dblue <- "#3579A8"
  wapo_lmauve <- "#D8B3D4"
  wapo_dmauve <- "#B68AB8"

  si_lorange <- "#f5b9a1"
  si_orange <- "#EF8A62"
  si_dorange <- "#D95709"

  contrast <- c("#E4F4EA", "#364352", "#768491", "#C5CAD0", "#BE311F")
  compliment <- c("#6F472E", "#6F827C", "#E4F4EA", "#E4F4EA", "#E4F4EA")

  outbreak_or <- c("#F4E5D2", "#FED79C", "#FBA529", "#FF6600")
  seablue <- c("#4FAFB6", "#98CBD0", "#D5EAEB", "#086EA1")
  seablue_text <- c("#00949D", "#58B2BA", "#B2D8DD", "#2476A6")

  # Vega palettes
  category10 <- c(
    "#1f77b4", "#ff7f0e", "#2ca02c", "#d62728", "#9467bd", "#8c564b",
    "#e377c2", "#7f7f7f", "#bcbd22", "#17becf"
  )

  category20 <- c(
    "#1f77b4", "#aec7e8", "#ff7f0e", "#ffbb78", "#2ca02c", "#98df8a",
    "#d62728", "#ff9896", "#9467bd", "#c5b0d5", "#8c564b", "#c49c94",
    "#e377c2", "#f7b6d2","#7f7f7f", "#c7c7c7", "#bcbd22", "#dbdb8d",
    "#17becf", "#9edae5"
  )

  category20b <- c(
    "#393b79", "#5254a3", "#6b6ecf", "#9c9ede", "#637939",  "#8ca252",
    "#b5cf6b", "#cedb9c", "#8c6d31", "#bd9e39", "#e7ba52", "#e7cb94",
    "#843c39", "#ad494a", "#d6616b", "#e7969c", "#7b4173",
    "#a55194", "#ce6dbd", "#de9ed6")

  category20c <- c(
    "#3182bd", "#6baed6", "#9ecae1", "#c6dbef", "#e6550d", "#fd8d3c",
    "#fdae6b", "#fdd0a2", "#31a354", "#74c476", "#a1d99b", "#c7e9c0",
    "#756bb1", "#9e9ac8", "#bcbddc", "#dadaeb", "#636363", "#969696",
    "#bdbdbd", "#d9d9d9")

  # Cartodb colors
  carto_sunset <- c("#fcde9c", "#faa476", "#f0746e", "#e34f6f", "#dc3977", "#b9257a", "#7c1d6f")
  carto_teal <- c("#d1eeea", "#a8dbd9", "#85c4c9", "#68abb8", "#4f90a6", "#3b738f", "#2a5674")

}



