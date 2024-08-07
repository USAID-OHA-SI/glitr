
#' Chooses palette to use with ggplot2
#'
#' @description
#' Generate a palette by linear interpolation.
#' If a discrete palette is selected, colors are recycled to the length of the desired vector.
#'
#'
#' @title Palette interpolation
#'
#' @param pal_name name of the palette
#' @param n number of interpolation points
#' @param reverse if true, reverses order
#' @param alpha sets transparency of each color
#'
#' @export
#'
#' @importFrom grDevices colorRampPalette
#' @importFrom scales show_col
#' @importFrom scales alpha
#'
#' @examples
#' \dontrun{
#' #View different interpolations of palettes
#' si_rampr("denims") %>%  scales::show_col()
#' si_rampr("denims", n = 10) %>% scales::show_col()
#' si_rampr("denims", n = 100)
#'}


si_rampr <- function(pal_name = "siei", n, alpha = 1, reverse = FALSE) {

  pal <- si_palettes[[pal_name]]

  if (is.null(pal))
    stop("\nPlease enter a valid SIEI palette. Select from one in `names(si_palettes)`")

  if(missing(n)) {
    n <- length(pal)
  }

  # Do this when you pick a discrete color
  pal_d <- c("siei", "siei_classic", "siei_classic_pairs", "midnight_blue_d", "viking_d",
             "electric_indigo_d", "orchid_bloom_d", "sun_kissed_d",
             "hunter_d", "lavender_haze_d", "tango_d", "denim", "old_rose",
             "moody_blue", "burnt_sienna", "scooter", "golden_sand", "genoa")

  if(pal_name %in% pal_d){

    if(n > length(pal)) {
    usethis::ui_warn("You selected a discrete palette for {n} colors. {usethis::ui_code('si_rampr()')} will only return n = {length(pal)} distinct colors. Some colors may be recycled.")
      }

    pal <- rep(pal, length.out = n)
    pal <- scales::alpha(pal, alpha = alpha)
  }

  else {
    pal <- colorRampPalette(pal)(n)
    pal <- scales::alpha(pal, alpha = alpha)
  }

  if (reverse) {
    pal <- rev(si_palettes[[pal_name]])
  }

  return(pal)
}


#' siei palette with ramped colors
#' @description Helper function to incorporate siei colors into scale fills
#'
#' @param palette Choose from 'si_palettes' list
#' @param reverse if true, reverses the order of palette
#' @param alpha sets transparency of each color
#' @importFrom grDevices colorRampPalette
#'

  si_pal <- function(palette = "siei", alpha = 1, reverse = FALSE) {

    function(n) {
      si_rampr(palette, n, alpha, reverse)
    }

  }


#' siei color scales for ggplot2
#' @title scale_color_si
#' @description SIEI colors available through scale_color_si
#'
#' @param palette Choose from 'si_palettes' list
#' @param reverse if true, reverses the order of palette
#' @param discrete whether to use a discrete color palette
#' @param alpha sets transparency of each color
#' @param na.value color for NA values, default = slate
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 discrete_scale
#' @importFrom ggplot2 scale_color_gradientn
#' @export
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' library(glitr)
#'
#' # Apply palettes to discrete or continuous colors
#' ggplot(diamonds) +
#' geom_point(aes(x = carat, y = price, color = cut)) +
#' scale_color_si("hunter_c", discrete = T)
#'
#' ggplot(diamonds) +
#' geom_point(aes(x = carat, y = price, color = price)) +
#' scale_color_si("hunter_c")}
#'

  scale_color_si <- function(palette = "hunter_c", alpha = 1, discrete = FALSE, reverse = FALSE, na.value = slate, ...) {

    if(missing(na.value))

    if (discrete == TRUE) {
      discrete_scale("colour", "si_rampr", si_pal(palette, alpha = alpha, reverse = reverse), na.value = na.value, ...)
    }
    else {
      scale_color_gradientn(colours = si_rampr(palette, 256, alpha = alpha, reverse = reverse), na.value = na.value, ...)
    }
  }


#' @title  scale_fill_si
#' @title SIEI colors for the scale_fill_ option
#' @description SIEI colors available through scale_fill_si
#'
#'
#' @param palette Choose from 'si_palettes' list
#' @param alpha sets transparency of each color
#' @param reverse if TRUE, reverses order of palette
#' @param discrete whether to use a discrete colour palette
#' @param na.value color for NA values, default = slate
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 discrete_scale
#' @importFrom ggplot2 scale_color_gradientn
#'
#' @export
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' library(tibble)
#' library(sf)
#' library(rnaturalearth)
#' library(glitr)
#' library(systemfonts)
#'
#' ggplot(diamonds) +
#'   geom_bar(aes(x = cut, fill = clarity)) +
#'   scale_fill_si("hunter_c", discrete = T)
#'
#' rnaturalearth::ne_countries(continent = "africa", returnclass = "sf") %>%
#'  add_column(runif = runif(nrow(.))) %>%
#'  ggplot() +
#'  geom_sf(aes(fill = runif), color = "white", size = 0.25) +
#'  scale_fill_si("orchid_bloom_c", reverse = T) +
#'  si_style_void()
#'  }

  scale_fill_si <- function(palette = "hunter_c", alpha = 1, discrete = FALSE, reverse = FALSE, na.value = slate, ...) {

    if (discrete == TRUE) {
      ggplot2::discrete_scale("fill", "si_rampr", si_pal(palette, alpha = alpha, reverse = reverse), na.value = na.value, ...)
    }
    else {
      ggplot2::scale_fill_gradientn(colours = si_rampr(palette, 256, alpha = alpha, reverse = reverse), na.value = na.value, ...)
    }
  }




