
#' Chooses palette to use with ggplot2
#'
#' @description Generate a palette by linear interpolation.
#' @title Palette interpolation
#'
#' @param pal_name name of the palette
#' @param n number of interpolation points
#' @param reverse if true, reverses order
#' @param alpha controls opacity of color
#'
#' @export
#'
#' @importFrom grDevices colorRampPalette
#' @importFrom scales show_col
#'
#' @examples
#' \dontrun{
#' #
#' View different interpolations of palettes
#' si_rampr("royals") %>%  scales::show_col()
#' si_rampr("royals", n = 10) %>% scales::show_col()
#' si_rampr("royals", n = 100)
#'}


si_rampr <- function(pal_name = "siei", n, alpha = 1, reverse = FALSE) {

    pal <- si_palettes[[pal_name]]

    if (is.null(pal))
      stop("\nPlease enter a valid SIEI palette. Select from:\n",
           paste0(c(names(si_palettes[1]),
                    paste0(names(si_palettes)[2:8], "(s)")
           ), "\n"))

    if(missing(n)) {
      n <- length(pal)
    }

    if(pal_name %in% names(si_palettes)[1:8] && n > length(pal)){
      usethis::ui_warn("You selected a discrete palette. {usethis::ui_code('si_rampr()')} will only return n = {length(pal)} colors")
      n <- length(pal)
    }

    if (reverse) {
      pal <- rev(si_palettes[[pal_name]])
    }

    pal <- colorRampPalette(pal, alpha)(n)

    return(pal)
  }


#' siei palette with ramped colors
#' @description Helper function to incorporate siei colors into scale fills
#'
#' @param palette Choose from 'si_palettes' list
#' @param alpha controls opacity of color
#' @param reverse if true, reverses the order of palette
#'
#' @importFrom grDevices colorRampPalette
#'

  si_pal <- function(palette = "siei", alpha = 1, reverse = FALSE) {

    function(n) {
      si_rampr(palette, n, alpha, reverse)
    }

  }




#' siei color scales for ggplot2
#' @rdname scale_color_si
#' @description SIEI colors available through scale_color_si
#' @param palette Choose from 'si_palettes' list
#' @param reverse if true, reverses the order of palette
#' @param alpha controls opacity of colors
#' @param discrete whether to use a discrete color palette
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @inheritParams viridis::scale_color_viridis
#'
#' @importFrom ggplot2 scale_color_manual discrete_scale scale_color_gradientn
#' @export
#'
#' @examples
#' \dontrun{
#' #
#' library(ggplot2)
#' library(glitr)
#'
#' Apply palettes to discrete or continuous colors
#' ggplot(diamonds) +
#' geom_point(aes(x = carat, y = price, color = cut)) +
#' scale_color_si("genoas")
#'
#' ggplot(diamonds) +
#' geom_point(aes(x = carat, y = price, color = price)) +
#' scale_color_si("genoas", discrete = FALSE)
#'}
#'

  scale_color_si <- function(palette = "genoas", discrete = TRUE, alpha = 1, reverse = FALSE, ...) {

    if (discrete) {
      discrete_scale("colour", "si_rampr", si_pal(palette, alpha = alpha, reverse = reverse), ...)
    }
    else {
      scale_color_gradientn(colours = si_rampr(palette, 256, alpha = alpha, reverse = reverse), ...)
    }
  }


#' @rdname scale_color_si
#' @export
  scale_color_si <- scale_color_si


#' @rdname scale_fill_si
#' @title SIEI colors for the scale_fill_ option
#' @description SIEI colors available through scale_fill_si
#' @param palette Choose from 'si_palettes' list
#' @param discrete if TRUE, reverses order of palette
#' @param alpha sets transparency of colors
#' @param discrete whether to use a discrete colour palette
#' @param ... additional arguments to pass to scale_fill_gradientn
#'
#' @inheritParams viridis::scale_fill_viridis
#' @inheritParams si_pal
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#' @export
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' library(tibble)
#' library(sf)
#' library(rnaturalearth)
#' library(glitr)
#'
#' ggplot(diamonds) +
#'   geom_bar(aes(x = cut, fill = clarity)) +
#'   scale_fill_si("genoas")
#'
#' rnaturalearth::ne_countries(continent = "africa", returnclass = "sf") %>%
#'  add_column(runif = runif(nrow(.))) %>%
#'  ggplot() +
#'  geom_sf(aes(fill = runif), color = "white", size = 0.25) +
#'  scale_fill_si("old_roses", discrete = FALSE, reverse = T) +
#'  si_style_void()
#'  }

  scale_fill_si <- function(palette = "genoas", discrete = TRUE, alpha = 1, reverse = FALSE, ...) {

    if (discrete) {
      discrete_scale("fill", "si_rampr", si_pal(palette, alpha = alpha, reverse = reverse), ...)
    }
    else {
      scale_fill_gradientn(colours = si_rampr(palette, 256, alpha = alpha, reverse = reverse), ...)
    }
  }

#' @rdname scale_fill_si
#' @export
  scale_fill_si <- scale_fill_si


#' Print available palettes
#'
#' @description Print color palettes available for use
#' @title Print color palettes available in glitr package
#' @export
#' @examples
#' \dontrun{
#' #
#' View different interpolations of palettes
#' print_si_pals()
#'}

  print_si_pals <- function() {print(names(si_palettes))}
