
# glitr
SI graphics package to adorn your ggplots

### OHA SI Graphics
Inspired by the BBC bbplot, this repo contains proposed functions for the glitr package. Once installed, glitr adorns your plots in a standardized SI style. As this package develops, pre-built plot types will be available to allow you to make beautiful, standardized SI plots for an array of PEPFAR indicators and disaggregates. 

### Installing glitr
glitr is not on CRAN, so you will have to install it directly from Github using devtools.

If you do not have the devtools package installed, you will have to run the `install.packages("devtools")` line in the code below as well.

```{r}
## SETUP

  #install
    install.packages("devtools")
    devtools::install_github("USAID-OHA-SI/glitr")
    
  #load the package
    library(glitr)

## EXAMPLE WITH BASE SI STYLE
  library(ggplot2)
  ggplot(iris, aes(Sepal.Length, y = Sepal.Width, colour = Species)) + geom_point() + si_style()
  
## LIST TYPES OF STYLES INCLUDED WITH PACKAGE
  ls(package:glitr)
  
```



---

*Disclaimer: The findings, interpretation, and conclusions expressed herein are those of the authors and do not necessarily reflect the views of United States Agency for International Development. All errors remain our own.*
