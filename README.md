  <!-- badges: start -->
  [![R-CMD-check](https://github.com/USAID-OHA-SI/glitr/workflows/R-CMD-check/badge.svg)](https://github.com/USAID-OHA-SI/glitr/actions)
  [![glitr status badge](https://usaid-oha-si.r-universe.dev/badges/glitr)](https://usaid-oha-si.r-universe.dev/glitr)
[![Lifecycle: stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![:name status badge](https://usaid-oha-si.r-universe.dev/badges/:name)](https://usaid-oha-si.r-universe.dev/)
  <!-- badges: end -->

# glitr <img src='man/figures/logo.png' align="right" height="120" />

SI graphics package to adorn your ggplots

### OHA SI Graphics
Inspired by the BBC bbplot, this repo contains proposed functions for the glitr package. Once installed, glitr adorns your plots in a standardized SI style. As this package develops, pre-built plot types will be available to allow you to make beautiful, standardized SI plots for an array of PEPFAR indicators and disaggregates. Detailed examples on how to use functions included in the `glitr` package can be found in the [glitr cookbook](vignettes/adorn-your-plots). For an explanation of how to install the default font, Source Sans Pro, see the [What the f*nt?] vignette(vignettes/what-the-f_nt).

### Installing glitr
`glitr` is not on CRAN, so you will have to install it directly from [rOpenSci](https://usaid-oha-si.r-universe.dev/packages) or [GitHub](https://github.com/USAID-OHA-SI/) using the code found below.

```{r}
## SETUP

  #install from rOpenSci
    install.packages('glitr', repos = c('https://usaid-oha-si.r-universe.dev', 'https://cloud.r-project.org'))
    
  #alt: install from GitHub using pak
    #install.packages("pak")
    #pak::pak("USAID-OHA-SI/glitr")
    
  #load the package
    library(glitr)

## EXAMPLE WITH BASE SI STYLE
  library(ggplot2)
  library(systemfonts)
  ggplot(iris, 
         aes(Sepal.Length, y = Sepal.Width, colour = Species)) + 
  geom_point() + 
  si_style()
  
## LIST TYPES OF STYLES INCLUDED WITH PACKAGE
  ls('package:glitr')
  
```

### What the f*nt?

To create standard visualizations across our team, we rely on one of USAID's alternate fonts, [Sans Source 3 (formerly Source Sans Pro)](https://fonts.google.com/specimen/Source+Sans+3). This font is not only not native to R, nor is it a standard to Windows. 

Sans Source Pro is an open source font available from [Google Fonts](https://fonts.google.com/specimen/Source+Sans+3) and from Software Center on USAID GFEs. To install from Google Fonts, navigate to this [link](https://fonts.google.com/specimen/Source+Sans+3) and click the "Download family". After the folder finishes downloading, unzip it. To install on your GFE, open Software Center App, click on "Source Sans Pro (Google Web Font)", and then select install.

In order to take advantage of non-native R fonts, you will need to update your graphics device in your Global Options to "AGG". To change your graphic device to "AGG", from the menu bar, navigate to Tools > Global Options > General > Graphics > Graphic Device. From there, the Graphic Device selected will likely just be "(Default)." You will need to change it to "AGG".

To use non-native fonts in R, you must run a program called `systemfonts` which is installed as a dependency from `glitr`. To use Source Sans 3 typeface with `ggplot2` in R, you will need to load the `systemfonts` library as with any other package at the start of your code.

---

*Disclaimer: The findings, interpretation, and conclusions expressed herein are those of the authors and do not necessarily reflect the views of United States Agency for International Development. All errors remain our own.*
