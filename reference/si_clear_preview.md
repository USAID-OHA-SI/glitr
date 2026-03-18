# Clear out Plot Previews

Cleans out the temporary folder of any temporary plots. The temporary
folder is removed when the session ends, but it may be useful to remove
extraneous previews taking up space and slowing down processing in the
session.

## Usage

``` r
si_clear_preview()
```

## See also

Other saving:
[`si_preview()`](https://usaid-oha-si.github.io/glitr/reference/si_preview.md),
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
