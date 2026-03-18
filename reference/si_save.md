# Save Plot

Wrapper around ggplot2::ggsave with SI standards

## Usage

``` r
si_save(
  filename,
  plot = last_plot(),
  path = NULL,
  scale = 1,
  width = 10,
  height = 5.625,
  dpi = 320,
  ...
)
```

## Arguments

- filename:

  File name to create on disk, png unless otherwise specified

- plot:

  Plot to save, defaults to last plot displayed.

- path:

  Path of the directory to save plot to: path and filename are combined
  to create the fully qualified file name. Defaults to the working
  directory.

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

exports a file with SI dimensions

## See also

Other saving:
[`si_clear_preview()`](https://usaid-oha-si.github.io/glitr/reference/si_clear_preview.md),
[`si_preview()`](https://usaid-oha-si.github.io/glitr/reference/si_preview.md)

## Examples

``` r
if (FALSE) { # \dontrun{
library(systemfonts)
library(ggplot2)
ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) +
  geom_point() + si_style()
#default save
si_save("out/sepal.png")
#defaults to png if not specified (.pdf, .svg, .jpeg)
si_save("out/sepal")
#change the width
si_save("out/sepal.jpeg", width = 5)  } # }
```
