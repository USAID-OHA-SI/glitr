# List of SI Color Palettes

Sets of color palettes that have been collected by the SI team. Includes
all colors from the SIEI data visualization guide and a few additional
palettes. Colors are stored as a named list. Use palette name or
position to call in colors.

Color sets are stored as the name of the first color. Calling
`si_palettes$viking_d` will return the five color palette where viking
is the base. Calling `si_palettes$viking_c` will return an interpolated
ramp of 10 colors for viking Calling `si_palettes$viking_t` will return
viking and four tints at 80%, 60%, 40%, and 20%. See the SIEI data
visualization guide for additional details.

## Usage

``` r
si_palettes
```

## Format

An object of class `list` of length 74.

## See also

[si_rampr](https://usaid-oha-si.github.io/glitr/reference/si_rampr.md)
for details on creating interpolated palettes of varying lengths.

## Examples

``` r
if (FALSE) { # \dontrun{
library(scales)

# List names of palettes available
names(si_palettes)

show_col(si_palettes$siei)
show_col(si_palettes$lavender_haze_d)
show_col(si_palettes$hunter_t)
show_col(si_palettes$sun_kissed_c)

# Show palettes interpolated
si_rampr("carto_div_earth", n = 10) %>% show_col(labels = T)
si_rampr("carto_div_earth", n = 100) %>% show_col(labels = FALSE)
} # }
```
