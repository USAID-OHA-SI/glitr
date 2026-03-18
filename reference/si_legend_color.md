# SI legend for color aesthetics

**\[experimental\]** Function attempts to create a well formatted
color-based legend to adorn an existing plot.

## Usage

``` r
si_legend_color()
```

## Details

This helper function compliments the various
[`si_style()`](https://usaid-oha-si.github.io/glitr/reference/si_style.md)
themes. The main action is to move a fill-based legend to the top left
of the plot and stretch the legend. The same action can be done using
the
[`ggplot2::guides()`](https://ggplot2.tidyverse.org/reference/guides.html)
function.

## Examples

``` r
if (FALSE) { # \dontrun{
library(systemfonts)
library(ggplot2)
ggplot(iris, aes(Sepal.Length, y = Sepal.Width, color = Sepal.Width)) +
geom_point(size = 4) + si_legend_color() + si_style()
} # }
```
