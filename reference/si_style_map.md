# Create Standard SI Map

Create Standard SI Map

## Usage

``` r
si_style_map(...)
```

## Arguments

- ...:

  inherits parameters from
  [`si_style()`](https://usaid-oha-si.github.io/glitr/reference/si_style.md)

## Examples

``` r
if (FALSE) { # \dontrun{

library(systemfonts)
library(tidyverse)
library(glitr)
library(gisr)
library(sf)

sfdf <- gisr::get_admin1("Nigeria") %>%
 select(name) %>%
 mutate(value = runif(nrow(.), 0, 1))

ggplot() +
   geom_sf(data = sfdf,
           aes(fill = value),
           color = grey10k,
           size = .1) +
   scale_fill_si(palette = "genoas",
                 discrete = FALSE,
                 limits = c(0, 1),
                 labels = scales::percent) +
   labs(title = "NIGERIA - % OF PLHIV BY STATE",
        subtitle = "States from XYZ Region are the most hit by HIV/AIDS",
        caption = base::paste0("Produced by OHA/SIEI/SI, ON ", base::Sys.Date())) +
  si_style_map() +
  si_legend_fill()
} # }
```
