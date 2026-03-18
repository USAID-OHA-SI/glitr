# Create Standard SI Plots

This function adorns your ggplot to convert it into a SI style plot. The
default font is Source Sans Pro

## Usage

``` r
si_style(
  font_title,
  font_subtitle,
  font_plot,
  font_caption,
  facet_space = 2,
  text_scale = 1,
  FO = FALSE,
  ...
)
```

## Arguments

- font_title:

  font family for titles, defaults to Source Sans Pro/Arial

- font_subtitle:

  font family for subtitles, defaults to Source Sans Pro/Arial

- font_plot:

  font family for the plot space, defaults to Source Sans Pro/Arial

- font_caption:

  font family for captions, defaults to Source Sans Pro/Arial

- facet_space:

  controls how far apart facets are from each other

- text_scale:

  scalar that will grow/shrink all text defined within

- FO:

  make everything black (why, who knows)

- ...:

  pass any parameters from theme that are not already defined within

## Examples

``` r
if (FALSE) { # \dontrun{
library(systemfonts)
library(ggplot2)
ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
  geom_point() + si_style()
  } # }
```
