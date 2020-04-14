## prepare datasets

# DEPENDENCIES ------------------------------------------------------------

library(tidyverse)
library(ICPIutilities)
library(usethis)


# IMPORT ------------------------------------------------------------------

  #sources from ICPI/TrainingDataset (FY20Q1)
   dataset_url <- "https://media.githubusercontent.com/media/ICPI/TrainingDataset/master/Output/MER_Structured_TRAINING_Datasets_PSNU_IM_FY18-20_20200214_v1_1.txt"
   df <- read_msd(dataset_url, save_rds = FALSE)


# CREATE DATASETS ---------------------------------------------------------

  cascade <- df %>%
      filter(indicator %in% c("HTS_TST", "HTS_TST_POS", "TX_NEW", "TX_CURR"),
           standardizeddisaggregate == "Total Numerator",
           operatingunit == "Saturn") %>%
      mutate(fiscal_year = fiscal_year + 30) %>%
      group_by(operatingunit, primepartner, indicator, fiscal_year) %>%
      summarise_if(is.double, sum, na.rm = TRUE) %>%
      reshape_msd(clean = TRUE) %>%
      rename(value = val) %>%
     ungroup()

    write_csv(cascade, "data-raw/cascade.csv")
    use_data(cascade, overwrite = TRUE)

  hts <- df %>%
    filter(indicator %in% c("HTS_TST", "HTS_TST_POS"),
           standardizeddisaggregate == "Modality/Age/Sex/Result",
           operatingunit == "Saturn",
           fiscal_year >= 2019) %>%
    mutate(fiscal_year = fiscal_year + 30) %>%
    group_by(operatingunit, primepartner, indicator, modality, fiscal_year) %>%
    summarise_if(is.double, sum, na.rm = TRUE) %>%
    reshape_msd(clean = TRUE) %>%
    rename(value = val) %>%
    ungroup()

  write_csv(hts, "data-raw/hts.csv")
  use_data(hts, overwrite = TRUE)

