# Palette interpolation

Generate a palette by linear interpolation. If a discrete palette is
selected, colors are recycled to the length of the desired vector.

## Usage

``` r
si_rampr(pal_name = "siei", n, alpha = 1, reverse = FALSE)
```

## Arguments

- pal_name:

  name of the palette

- n:

  number of interpolation points

- alpha:

  sets transparency of each color

- reverse:

  if true, reverses order

## Details

Chooses palette to use with ggplot2

## Examples

``` r
if (FALSE) { # \dontrun{
#View different interpolations of palettes
si_rampr("denims") %>%  scales::show_col()
si_rampr("denims", n = 10) %>% scales::show_col()
si_rampr("denims", n = 100)
} # }
```
