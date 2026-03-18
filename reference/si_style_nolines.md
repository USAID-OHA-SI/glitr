# SI style plot with blank canvass

Incorporates the default si_style graph and strips all gridlines. Useful
for when you want to focus attention on a few parts of a plot – such as
a bar graph with fewer than four categories.

## Usage

``` r
si_style_nolines(...)
```

## Arguments

- ...:

  inherits parameters from
  [`si_style()`](https://usaid-oha-si.github.io/glitr/reference/si_style.md)

## Examples

``` r
if (FALSE) { # \dontrun{
library(systemfonts)
library(ggplot2)
ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
  geom_point() + si_style_nolines()
} # }
```
