# scale_color_si

SIEI colors available through scale_color_si

## Usage

``` r
scale_color_si(
  palette = "hunter_c",
  alpha = 1,
  discrete = FALSE,
  reverse = FALSE,
  na.value = slate,
  ...
)
```

## Arguments

- palette:

  Choose from 'si_palettes' list

- alpha:

  sets transparency of each color

- discrete:

  whether to use a discrete color palette

- reverse:

  if true, reverses the order of palette

- na.value:

  color for NA values, default = slate

- ...:

  additional arguments to pass to scale_color_gradientn

## Details

siei color scales for ggplot2

## Examples

``` r
if (FALSE) { # \dontrun{
library(ggplot2)
library(glitr)

# Apply palettes to discrete or continuous colors
ggplot(diamonds) +
geom_point(aes(x = carat, y = price, color = cut)) +
scale_color_si("hunter_c", discrete = T)

ggplot(diamonds) +
geom_point(aes(x = carat, y = price, color = price)) +
scale_color_si("hunter_c")} # }
```
