## prepare datasets

# DEPENDENCIES ------------------------------------------------------------

library(tidyverse)
library(gophr)
library(usethis)
library(Wavelength)
library(lubridate)


# IMPORT ------------------------------------------------------------------

  #sources from ICPI/TrainingDataset (FY20Q1)
   dataset_url <- "https://media.githubusercontent.com/media/ICPI/TrainingDataset/master/Output/MER_Structured_TRAINING_Datasets_PSNU_IM_FY18-20_20200214_v1_1.txt"
   df <- read_msd(dataset_url, save_rds = FALSE)

   df_hfr <- hfr_read("../TrainingDataset/Output/HFR_FY21_Masked_PEPFARlandia.zip")

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

    cascade <- cascade %>% rename(prime_partner_name = primepartner)
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

  hts <- hts %>% rename(prime_partner_name = primepartner)
  use_data(hts, overwrite = TRUE)

  hfr_mmd <- df_hfr %>%
    filter(indicator %in% c("TX_MMD", "TX_CURR"),
           val > 0) %>%
    mutate(indicator = case_when(is.na(otherdisaggregate) ~ indicator,
                                 otherdisaggregate == "<3 months" ~ "TX_MMD.u3mo",
                                 TRUE ~ "TX_MMD.o3mo"),
           operatingunit = "Saturn",
           fy = 2050,
           date = date + years(29)) %>%
    count(date, fiscal_year =  fy, hfr_pd,
          operatingunit, snu1, psnu,
          mech_code, indicator,
          wt = val,
          name = "value") %>%
    pivot_wider(names_from = indicator,
                names_glue = "{tolower(indicator)}") %>%
    rowwise() %>%
    mutate(tx_mmd_unk = tx_curr - sum(tx_mmd.o3mo, tx_mmd.u3mo, na.rm = TRUE),
           tx_mmd_unk = ifelse(tx_mmd_unk < 0, 0, tx_mmd_unk),
           across(starts_with("tx_mmd"), ~ round(., -1)),
           tx_curr = sum(tx_mmd.o3mo, tx_mmd.u3mo, tx_mmd_unk, na.rm = TRUE)) %>%
    ungroup() %>%
    mutate(share_tx_mmd.o3mo = round(tx_mmd.o3mo/tx_curr, 2),
           across(starts_with("tx_mmd"), ~ ifelse(is.na(.), 0, .))) %>%
    filter(tx_curr > 0,
           (!is.na(tx_mmd.o3mo) | !is.na(tx_mmd.u3mo)))

  use_data(hfr_mmd, overwrite = TRUE)
