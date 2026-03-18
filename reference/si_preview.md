# Preview Plot Output

Saves and launches a temporary file to see how the sizing and layout of
all aesthetics, e.g. font size, shape size, etc, look when exported from
the IDE preview.

## Usage

``` r
si_preview(scale = 1, width = 10, height = 5.625, dpi = 320, ...)
```

## Arguments

- scale:

  Multiplicative scaling factor.

- width:

  plot width in inches, default = 10

- height:

  plot height in inches, default = 5.625

- dpi:

  plot resolution

- ...:

  additional arguments to that pass to ggsave

## Value

saves and previews a png output

## See also

Other saving:
[`si_clear_preview()`](https://usaid-oha-si.github.io/glitr/reference/si_clear_preview.md),
[`si_save()`](https://usaid-oha-si.github.io/glitr/reference/si_save.md)

## Examples

``` r
if (FALSE) { # \dontrun{
library(systemfonts)
hts %>%
  dplyr::filter(period_type == "results",
                indicator == "HTS_TST_POS") %>%
  ggplot2::ggplot(aes(period, value)) +
  ggplot2::geom_col() +
  ggplot2::facet_wrap(~forcats::fct_reorder2(modality, period, value)) +
  ggplot2::labs(x = NULL, y = NULL,
                title = "Saturn experienced a drop in Index testing in FY50Q1" %>% toupper,
                subtitle = "Saturn, folks!",
                caption = "Source: FY50Q1i MSD") +
  si_style_nolines()

si_preview()

si_clear_preview() } # }
```
