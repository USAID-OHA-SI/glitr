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
#' @family saving
#'
#' @examples
#' \dontrun{
#' library(systemfonts)
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



#' Preview Plot Output
#'
#' Saves and launches a temporary file to see how the sizing and layout of all
#' aesthetics, e.g. font size, shape size, etc, look when exported from the IDE
#' preview.
#'
#' @param scale Multiplicative scaling factor.
#' @param width plot width in inches, default = 10
#' @param height plot height in inches, default = 5.625
#' @param dpi plot resolution
#' @param ... additional arguments to that pass to ggsave
#'
#' @return saves and previews a png output
#' @export
#'
#' @family saving
#'
#' @examples
#' \dontrun{
#' library(systemfonts)
#' hts %>%
#'   dplyr::filter(period_type == "results",
#'                 indicator == "HTS_TST_POS") %>%
#'   ggplot2::ggplot(aes(period, value)) +
#'   ggplot2::geom_col() +
#'   ggplot2::facet_wrap(~forcats::fct_reorder2(modality, period, value)) +
#'   ggplot2::labs(x = NULL, y = NULL,
#'                 title = "Saturn experienced a drop in Index testing in FY50Q1" %>% toupper,
#'                 subtitle = "Saturn, folks!",
#'                 caption = "Source: FY50Q1i MSD") +
#'   si_style_nolines()
#'
#' si_preview()
#'
#' si_clear_preview() }
#'
si_preview <- function(scale = 1,
                       width = 10,
                       height = 5.625,
                       dpi = 320, ...){

  #create temp file for storing plot
  tmp_file <- tempfile("previewplot-", fileext = ".png")

  #save file
  ggplot2::ggsave(tmp_file,
                  scale = scale,
                  width = width,
                  height = height,
                  dpi = dpi,
                  ...)

  #launch file
  shell.exec(tmp_file)

  #console output for where to file the file(s)
  usethis::ui_info("The plot preview is now open in Photos and can be found in this temporary folder: {usethis::ui_path(tempdir())}")

}


#' Clear out Plot Previews
#'
#' Cleans out the temporary folder of any temporary plots. The temporary folder
#' is removed when the session ends, but it may be useful to remove extraneous
#' previews taking up space and slowing down processing in the session.
#'
#' @export
#'
#' @family saving
#' @examples
#' \dontrun{
#' library(systemfonts)
#' hts %>%
#'   dplyr::filter(period_type == "results",
#'                 indicator == "HTS_TST_POS") %>%
#'   ggplot2::ggplot(aes(period, value)) +
#'   ggplot2::geom_col() +
#'   ggplot2::facet_wrap(~forcats::fct_reorder2(modality, period, value)) +
#'   ggplot2::labs(x = NULL, y = NULL,
#'                 title = "Saturn experienced a drop in Index testing in FY50Q1" %>% toupper,
#'                 subtitle = "Saturn, folks!",
#'                 caption = "Source: FY50Q1i MSD") +
#'   si_style_nolines()
#'
#' si_preview()
#'
#' si_clear_preview() }
#'
si_clear_preview <- function(){

  plot_files <- list.files(tempdir(), "previewplot")

  unlist(plot_files)
}
