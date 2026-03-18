# scale_fill_si

SIEI colors available through scale_fill_si

## Usage

``` r
scale_fill_si(
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

  whether to use a discrete colour palette

- reverse:

  if TRUE, reverses order of palette

- na.value:

  color for NA values, default = slate

- ...:

  additional arguments to pass to scale_color_gradientn

## Examples

``` r
if (FALSE) { # \dontrun{
library(ggplot2)
library(tibble)
library(sf)
library(rnaturalearth)
library(glitr)
library(systemfonts)

ggplot(diamonds) +
  geom_bar(aes(x = cut, fill = clarity)) +
  scale_fill_si("hunter_c", discrete = T)

rnaturalearth::ne_countries(continent = "africa", returnclass = "sf") %>%
 add_column(runif = runif(nrow(.))) %>%
 ggplot() +
 geom_sf(aes(fill = runif), color = "white", size = 0.25) +
 scale_fill_si("orchid_bloom_c", reverse = T) +
 si_style_void()
 } # }
```
