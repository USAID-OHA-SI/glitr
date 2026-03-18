# SI style plot with only y-axis gridlines

Incorporates the default si_style graph and modifies it to include on
y-axis gridlines. Useful for when you are highlighting a horizontal
comparison.

## Usage

``` r
si_style_ygrid(...)
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
  geom_point() + si_style_ygrid()
} # }
```
