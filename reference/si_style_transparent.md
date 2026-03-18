# Create ggplot with transparent background

Create ggplot with transparent background

## Usage

``` r
si_style_transparent(...)
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
  geom_point() + si_style_transparent()
} # }
```
