#' @title Create Standard SI Plots
#'
#' @description This function adorns your ggplot to convert it into a SI style plot. The default font is Source Sans Pro
#' @param font_title font family for titles
#' @param font_subtitle font family for subtitles
#' @param font_plot font family for the plot space
#' @param font_caption font family for captions
#'
#' @export
#' @importFrom magrittr %>%
#' @importFrom ggplot2 %+replace% aes geom_point theme_minimal theme
#'
#' @examples
#' \dontrun{
#' library(extrafont)
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
#'   geom_point() + si_style()
#'   }

si_style <- function(font_title = "Source Sans Pro",
                     font_subtitle = "Source Sans Pro",
                     font_plot = "Source Sans Pro",
                     font_caption = "Source Sans Pro") {


  half_line <- 5.5

  # build off of theme_minimal settings
  ggplot2::theme_minimal() %+replace%

  ggplot2::theme(
    plot.title = ggplot2::element_text(
      family = font_title,
      size = 14,
      face = "bold",
      color = color_title,
      margin = ggplot2::margin(b = half_line),
      hjust = 0),

    #This sets the font, size, type and colour of text for the chart's subtitle, as well as setting a margin between the title and the subtitle
    plot.subtitle = ggplot2::element_text(
      family = font_subtitle,
      size = 12,
      color = color_title,
      margin = ggplot2::margin(b = half_line),
      hjust = 0),
    plot.caption = ggplot2::element_text(
      family = font_caption,
      size = 9,
      color = color_caption,
      margin = ggplot2::margin(t = half_line),
      hjust = 1, vjust = 1),
    plot.margin = ggplot2::margin(half_line, half_line, half_line, half_line),


    #Legend format
    # Set the legend to be at the top left of the graphic, below title
    legend.position = "top",
    legend.text.align = 0,
    legend.justification = c(0, 0),
    legend.background = ggplot2::element_blank(),
    #legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.title = ggplot2::element_text(
      family = font_title,
      size = 11,
      color = color_plot_text),
    legend.text = ggplot2::element_text(
      family = font_title,
      size = 11,
      color = color_plot_text),

    #Axis format
    axis.text = ggplot2::element_text(
      family = font_plot,
      size = 10,
      color = color_plot_text),
    axis.text.x = ggplot2::element_text(),
    axis.ticks = ggplot2::element_blank(),
    axis.line = ggplot2::element_blank(),
    axis.title = ggplot2::element_text(
      family = font_plot,
      size = 10,
      colour = color_plot_text),

    #Grid lines
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(colour = color_gridline),
    panel.grid.major.x = ggplot2::element_line(colour = color_gridline),

    #Blank background
    panel.background = ggplot2::element_blank(),
    panel.border = ggplot2::element_blank(),
    panel.spacing = unit(2, "lines"),

    #Strip background (This sets the panel background for facet-wrapped plots to white)
    strip.background = ggplot2::element_blank(),
    strip.text = ggplot2::element_text(
      family = font_title,
      size  = 11,
      hjust = 0,
      color = color_plot_text,
      margin = ggplot2::margin(0.8 * half_line, 0.8 * half_line, 0.8 * half_line, 0.8 * half_line))
  )
}
