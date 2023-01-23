  <!-- badges: start -->
  [![R-CMD-check](https://github.com/USAID-OHA-SI/glitr/workflows/R-CMD-check/badge.svg)](https://github.com/USAID-OHA-SI/glitr/actions)
  <!-- badges: end -->

# glitr <img src='man/figures/logo.png' align="right" height="120" />

SI graphics package to adorn your ggplots

### OHA SI Graphics
Inspired by the BBC bbplot, this repo contains proposed functions for the glitr package. Once installed, glitr adorns your plots in a standardized SI style. As this package develops, pre-built plot types will be available to allow you to make beautiful, standardized SI plots for an array of PEPFAR indicators and disaggregates. Detailed examples on how to use functions included in the `glitr` package can be found in the [glitr cookbook](vignettes/adorn-your-plots).

### Installing glitr
glitr is not on CRAN, so you will have to install it directly from Github using devtools.

If you do not have the devtools package installed, you will have to run the `install.packages("devtools")` line in the code below as well.

```{r}
## SETUP

  #install
    install.packages("remotes")
    remotes::install_github("USAID-OHA-SI/glitr", build_vignettes = TRUE)
    
  #load the package
    library(glitr)

## EXAMPLE WITH BASE SI STYLE
  library(ggplot2)
  library(extrafont)
  ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) + geom_point() + si_style()
  
## LIST TYPES OF STYLES INCLUDED WITH PACKAGE
  ls(package:glitr)
  
```

### What the f*nt?

To create standard visualizations across our team, we rely on one of USAID's alternate fonts, Sans Source Pro. This font is not only not native to R, nor is it a standard to Windows. 

Sans Source Pro is an open source font available from Google Fonts and from Software Center on USAID GFEs. To install from Google Fonts, navigate to this [link](https://fonts.google.com/specimen/Source+Sans+Pro) and click the "Download family". After the folder finishes downloading, unzip it. To install on your GFE, oepn Softare Center App, click on "Source Sans Pro (Google Web Font)", and then select install.

To use non-native fonts in R, you must run a program called `extrafonts` which is installed as a dependency from `glitr`. You will need to run the following code below to install all the fonts on your computer (if desired), including your newly downloaded Source Sans Pro typeface. You will only need to import fonts only once. However, to use these fonts with any plotting in R, you will need to load the `extrafont` library as with any other package.

```{r}
# Required library
library(extrafont)
library(remotes)

# Downgrade a package dependency for extrafont
#https://stackoverflow.com/questions/61204259/how-can-i-resolve-the-no-font-name-issue-when-importing-fonts-into-r-using-ext/68642855#68642855
install_version("Rttf2pt1", version = "1.3.8")

#import all Windows fonts
  font_import()
  
#restart your R session - CTRL + SHIFT + F10

library(extrafont)
fonts()
```

---

*Disclaimer: The findings, interpretation, and conclusions expressed herein are those of the authors and do not necessarily reflect the views of United States Agency for International Development. All errors remain our own.*
