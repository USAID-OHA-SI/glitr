#' Cascade Indicators
#'
#' Masked & subset MSD data on the clinical cascade for Saturn
#'  Operating Unit (Total Numerators only). Data sourced from ICPI/TrainingDataset.
#'
#' @format A data frame with six variables: `operatingunit`,
#'    `primepartner`, `indicator`, `period`,
#'     `period_type`, and `value`.
"cascade"




#' Testing (HTS_TST & HTS_TST_POS) Indicators
#'
#' Masked & subset MSD data on the testing indicators and their modalities for Saturn
#'  Operating Unit (Modality/Age/Sex/Result). Data sourced from ICPI/TrainingDataset.
#'
#' @format A data frame with seven variables: `operatingunit`,
#'    `primepartner`, `indicator`, `modality`, `period`,
#'     `period_type`, and `value`.
"hts"



#' Spatial data for mapping testing indicators
#'
#' Mock spatial data for partners operating geographies for Saturn
#'  Data sourced from hts and rnaturalearth (Slovenia, Jugovzhodna Slovenija).
#'
#' @format A spatial data frame with three variables and geometry: `iso_no`,
#'    `primepartner`, `iso_1`, `geometry`,
"hts_geo"

#' HFR Multi-Month Dispensing (MMD) data
#'
#' Masked & subset HFR  data on the MMD for Saturn Operating Unit (no age/sex).
#' Data sourced masked in a similar manner as the ICPI/TrainingDataset.
#'
#' @format A data frame with 12 variables and 243 rows
#' \describe{
#'   \item{date}{start of month for month reporting}
#'   \item{fiscal_year}{current fiscal year of reporting}
#'   \item{hfr_pd}{reporting period, month number in FY calendar}
#'   \item{operatingunit}{PEPFAR Operating Unit}
#'   \item{snu1}{PEPFAR sub national unit 1 below national level}
#'   \item{psnu}{PEPFAR prioritization sub national unit}
#'   \item{mech_code}{PEPFAR mechanism code}
#'   \item{tx_curr}{reporting period value for patients on treatment}
#'   \item{tx_mmd.o3mo}{reporting period value for patients on 3 months or more of Rx dispensing}
#'   \item{tx_mmd.u3mo}{reporting period value for patients on under 3 months of Rx dispensing}
#'   \item{tx_mmd.unk}{reporting period value for patients with unknown months of Rx dispensing}
#'   \item{share_tx_mmd.o3mo}{reporting period share of treatment patients on 3 months or more of Rx dispensing}
#' }
"hfr_mmd"
