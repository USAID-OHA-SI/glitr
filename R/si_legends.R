#' @param .keep \Sexpr[results=rd]{lifecycle::badge("experimental")}
#'   This is an experimental argument that allows you to control which columns
#'   from `.data` are retained in the output:




#' @title SI recommended legend style for fill aesthetics
#'
#' `r lifecycle::badge('experimental')` Function attempts to create a well
#' formatted fill-based legend to adorn an existing plot.
#'
#'
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

#' @title SI recommended legend style for color aesthetics
#'
#' `r lifecycle::badge('experimental')` Function attempts to create a well
#' formatted color-based legend to adorn an existing plot.
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
