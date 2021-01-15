#' Cascade Indicators
#'
#' Masked & subset MSD data on the clinical cascade for Saturn
#'  Operating Unit (Total Numerators only). Data sourced from ICPI/TrainingDataset.
#'
#' @format A data frame with six variables: \code{operatingunit},
#'    \code{primepartner}, \code{indicator}, \code{period},
#'     \code{period_type}, and \code{value}.
"cascade"




#' Testing (HTS_TST & HTS_TST_POS) Indicators
#'
#' Masked & subset MSD data on the testing indicators and their modalities for Saturn
#'  Operating Unit (Modality/Age/Sex/Result). Data sourced from ICPI/TrainingDataset.
#'
#' @format A data frame with seven variables: \code{operatingunit},
#'    \code{primepartner}, \code{indicator}, \code{modality}, \code{period},
#'     \code{period_type}, and \code{value}.
"hts"



#' Spatial data for mapping testing indicators
#'
#' Mock spatial data for partners operating geographies for Saturn
#'  Data sourced from hts and rnaturalearth (Slovenia, Jugovzhodna Slovenija).
#'
#' @format A spatial data frame with three variables and geometry: \code{iso_no},
#'    \code{primepartner}, \code{iso_1}, \code{geometry},
"hts_geo"
