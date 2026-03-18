# SI style plot with x-axis line drawn

May be used in place of si_style_blank if you would like to anchor the
x-axis.

## Usage

``` r
si_style_xline(...)
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
  geom_point() + si_style_xline()
} # }
```
