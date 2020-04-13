
#' @title SI style plot with only y-axis gridlines
#' @description Incorporates the default si_style graph and modifies it to include on y-axis gridlines. Useful for when you are highlighting a horizontal comparison.
#' @export
#' @examples
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style_ygrid()
#'

  # Show only y axis lines
    si_style_ygrid <- function() {
      si_style() %+replace%
        theme(
          panel.grid.major.x = ggplot2::element_blank()
        )
    }

#' @title  SI style plot with only x-axis gridlines
#' @description Incorporates the default si_style graph and modifies it to include on x-axis gridlines. Useful for when you are highlighting a vertical comparison, such as rotated bar graphs
#'
#' @export
#' @importFrom ggplot2 %+replace% aes geom_point theme
#' @examples
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style_xgrid()
#'

  # Show only x axis lines
    si_style_xgrid<- function() {
      si_style() %+replace%
        theme(
          panel.grid.major.y = ggplot2::element_blank()
        )
    }

#' @title SI style plot with blank canvass
#' @description Incorporates the default si_style graph and strips all gridlines. Useful for when you want to focus attention on a few parts of a plot -- such as a bar graph with fewer than four categories.
#'
#' @export
#' @importFrom ggplot2 %+replace% aes geom_point theme
#' @examples
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style_nolines()
#'

  # Show no axis lines
    si_style_nolines <- function() {
      si_style() %+replace%
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
#' @examples
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style_xline()
#'

    si_style_xline <- function() {
      si_style_nolines() %+replace%
        theme(
          axis.line.x = element_line(colour = color_gridline)
        )
    }


#' @title SI style plot with y-axis line drawn
#' @description May be used in place of si_style_blank if you would like to anchor the y-axis.
#'
#' @export
#' @importFrom ggplot2 %+replace% aes geom_point theme element_line
#' @examples
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style_yline()
#'

    si_style_yline <- function() {
      si_style_nolines() %+replace%
        theme(
          axis.line.y = element_line(colour = color_gridline)
        )
    }


#' @title Create Standard SI Plots showing only both x and y axis lines
#'
#' @export
#' @importFrom ggplot2 %+replace% aes geom_point theme element_line
#' @examples
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style_xyline()
#'
#'
  si_style_xyline <- function() {
      si_style() %+replace%
        theme(
          axis.line = element_line(colour = color_gridline),
          panel.grid.major.y = ggplot2::element_blank(),
          panel.grid.major.x = ggplot2::element_blank(),
        )
    }




