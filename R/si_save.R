#' Save Plot
#'
#' @description Wrapper around ggplot2::ggsave with SI standards
#'
#' @param filename File name to create on disk, png unless otherwise specified
#' @param plot Plot to save, defaults to last plot displayed.
#' @param path Path of the directory to save plot to: path and filename are combined to create the fully qualified file name. Defaults to the working directory.
#' @param scale Multiplicative scaling factor.
#' @param width plot width in inches, default = 10
#' @param height plot height in inches, default = 5.625
#' @param dpi plot resolution
#' @param ... additional arguments to that pass to ggsave
#'
#' @importFrom ggplot2 ggsave
#'
#' @return exports a file with SI dimensions
#' @export
#'
#' @examples
#' \dontrun{
#' library(extrafont)
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style()
#' #default save
#' si_save("out/sepal.png")
#' #defaults to png if not specified (.pdf, .svg, .jpeg)
#' si_save("out/sepal")
#' #change the width
#' si_save("out/sepal.jpeg", width = 5)  }

si_save <- function(filename,
                     plot = last_plot(),
                     path = NULL,
                     scale = 1,
                     width = 10,
                     height = 5.625,
                     dpi = 320, ...){

  if(!grepl("png$|pdf$|svg$|jpeg$|tiff$", filename))
     filename <- paste0(filename, ".png")

  ggplot2::ggsave(filename, plot, path = path,
                  scale = scale, width = width,
                  height = height,
                  dpi = dpi, ...)
}



