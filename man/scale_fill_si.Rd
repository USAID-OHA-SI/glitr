% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/si_helpers.R
\name{scale_fill_si}
\alias{scale_fill_si}
\title{scale_fill_si}
\usage{
scale_fill_si(
  palette = "hunter_c",
  alpha = 1,
  discrete = FALSE,
  reverse = FALSE,
  na.value = slate,
  ...
)
}
\arguments{
\item{palette}{Choose from 'si_palettes' list}

\item{alpha}{sets transparency of each color}

\item{discrete}{whether to use a discrete colour palette}

\item{reverse}{if TRUE, reverses order of palette}

\item{na.value}{color for NA values, default = slate}

\item{...}{additional arguments to pass to scale_color_gradientn}
}
\description{
SIEI colors available through scale_fill_si
}
\examples{
\dontrun{
library(ggplot2)
library(tibble)
library(sf)
library(rnaturalearth)
library(glitr)
library(systemfonts)

ggplot(diamonds) +
  geom_bar(aes(x = cut, fill = clarity)) +
  scale_fill_si("hunter_c", discrete = T)

rnaturalearth::ne_countries(continent = "africa", returnclass = "sf") \%>\%
 add_column(runif = runif(nrow(.))) \%>\%
 ggplot() +
 geom_sf(aes(fill = runif), color = "white", size = 0.25) +
 scale_fill_si("orchid_bloom_c", reverse = T) +
 si_style_void()
 }
}
