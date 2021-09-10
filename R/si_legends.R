#' @title Creates an SI recommended legend style for filled aesthics
#'
#' @export
#' @examples
#' \dontrun{
#' library(extrafont)
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style_xyline()
#'}
#'

si_legend_fill <- function(){
  ggplot2::guides(fill = guide_colorbar(barheight = unit(4, units = "mm"),
                               barwidth = unit(90, units = "mm"),
                               direction = "horizontal",
                               ticks.colour = "white",
                               title.position = "top",
                               title.hjust = 0)
  )
}

#' @title Creates an SI recommended legend style for colored aesthics
#'
#' @export
#' @examples
#' \dontrun{
#' library(extrafont)
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style_xyline()
#'}
#'
si_legend_color <- function(){
  ggplot2::guides(color = guide_colorbar(barheight = unit(4, units = "mm"),
                                barwidth = unit(90, units = "mm"),
                                direction = "horizontal",
                                ticks.colour = "white",
                                title.position = "top",
                                title.hjust = 0)
  )
}


si_legend_discrete <- function(){

}
