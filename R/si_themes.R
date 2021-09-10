
#' @title SI style plot with only y-axis gridlines
#' @description Incorporates the default si_style graph and modifies it to include on y-axis gridlines. Useful for when you are highlighting a horizontal comparison.
#' @param ... inherits parameters from [si_style()]
#' @export
#' @examples
#' \dontrun{
#' library(extrafont)
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style_ygrid()
#'}

  # Show only y axis lines
    si_style_ygrid <- function(...) {
      si_style(...) %+replace%
        theme(
          panel.grid.major.x = ggplot2::element_blank()
        )
    }

#' @title  SI style plot with only x-axis gridlines
#' @description Incorporates the default si_style graph and modifies it to include on x-axis gridlines. Useful for when you are highlighting a vertical comparison, such as rotated bar graphs
#'
#' @export
#' @importFrom ggplot2 %+replace% aes geom_point theme
#' @param ... inherits parameters from [si_style()]
#' @examples
#' \dontrun{
#' ibrary(extrafont)
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style_xgrid()
#'}

  # Show only x axis lines
    si_style_xgrid <- function(...) {
      si_style(...) %+replace%
        theme(
          panel.grid.major.y = ggplot2::element_blank()
        )
    }

#' @title SI style plot with blank canvass
#' @description Incorporates the default si_style graph and strips all gridlines. Useful for when you want to focus attention on a few parts of a plot -- such as a bar graph with fewer than four categories.
#'
#' @export
#' @importFrom ggplot2 %+replace% aes geom_point theme
#' @param ... inherits parameters from [si_style()]
#' @examples
#' \dontrun{
#' library(extrafont)
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style_nolines()
#'}

  # Show no axis lines
    si_style_nolines <- function(...) {
      si_style(...) %+replace%
        theme(
          panel.grid.major.y = ggplot2::element_blank(),
          panel.grid.major.x = ggplot2::element_blank(),
        )
    }


#' @title SI style plot with x-axis line drawn
#' @description May be used in place of si_style_blank if you would like to anchor the x-axis.
#'
#' @export
#' @importFrom ggplot2 %+replace% aes geom_point theme element_line
#' @param ... inherits parameters from [si_style()]
#' @examples
#' \dontrun{
#' library(extrafont)
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style_xline()
#'}

    si_style_xline <- function(...) {
      si_style_nolines(...) %+replace%
        theme(
          axis.line.x = element_line(colour = color_gridline)
        )
    }


#' @title SI style plot with y-axis line drawn
#' @description May be used in place of si_style_blank if you would like to anchor the y-axis.
#'
#' @export
#' @importFrom ggplot2 %+replace% aes geom_point theme element_line
#' @param ... inherits parameters from [si_style()]
#' @examples
#' \dontrun{
#' library(extrafont)
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style_yline()
#'}

    si_style_yline <- function(...) {
      si_style_nolines(...) %+replace%
        theme(
          axis.line.y = element_line(colour = color_gridline)
        )
    }


#' @title Create Standard SI Plots showing only both x and y axis lines
#'
#' @export
#' @importFrom ggplot2 %+replace% aes geom_point theme element_line
#' @param ... inherits parameters from [si_style()]
#' @examples
#' \dontrun{
#' library(extrafont)
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style_xyline()
#'}
#'
  si_style_xyline <- function(...) {
      si_style(...) %+replace%
        theme(
          axis.line = element_line(colour = color_gridline),
          panel.grid.major.y = ggplot2::element_blank(),
          panel.grid.major.x = ggplot2::element_blank(),
        )
  }


#' @title Create Standard SI Map
#'
#' @export
#' @importFrom ggplot2 %+replace%
#' @param ... inherits parameters from [si_style()]
#' @examples
#' \dontrun{
#'
#' library(extrafont)
#' library(tidyverse)
#' library(glitr)
#' library(gisr)
#' library(sf)
#'
#' sfdf <- gisr::get_admin1("Nigeria") %>%
#'  select(name) %>%
#'  mutate(value = runif(nrow(.), 0, 1))
#'
#' ggplot() +
#'    geom_sf(data = sfdf,
#'            aes(fill = value),
#'            color = grey10k,
#'            size = .1) +
#'    scale_fill_si(palette = "genoas",
#'                  discrete = FALSE,
#'                  limits = c(0, 1),
#'                  labels = scales::percent) +
#'    labs(title = "NIGERIA - % OF PLHIV BY STATE",
#'         subtitle = "States from XYZ Region are the most hit by HIV/AIDS",
#'         caption = base::paste0("Produced by OHA/SIEI/SI, ON ", base::Sys.Date())) +
#'   si_style_map() +
#'   si_legend_fill()
#'}
#'
  si_style_map <- function(...) {
    ggplot2::theme_void() %+replace%
      si_style(...) %+replace%
      theme(
        line = ggplot2::element_blank(),
        rect = ggplot2::element_blank(),
        axis.text.x = ggplot2::element_blank(),
        axis.text.y = ggplot2::element_blank(),
      )
  }


#' @title Create ggplot with no axes or no grid lines
#'
#' @export
#' @importFrom ggplot2 %+replace% aes geom_point theme element_line
#' @examples
#' \dontrun{
#' library(extrafont)
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style_void()
#'}

  si_style_void <- function() {
    si_style() %+replace%
      theme(
        axis.line = ggplot2::element_blank(),
        panel.grid.major.y = ggplot2::element_blank(),
        panel.grid.major.x = ggplot2::element_blank(),
        axis.text.x = ggplot2::element_blank(),
        axis.text.y = ggplot2::element_blank(),
        axis.title = ggplot2::element_blank()
      )
  }

