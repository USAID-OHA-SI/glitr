##Create TPS file with SIEI Palettes for Tableau

# DEPENDENCIES ------------------------------------------------------------

  library(tidyverse)
  library(glitr)
  library(glue)
  library(googledrive)

# FUNCTION - PREP PALETTE TEXT --------------------------------------------

  #function to prepare text for tps file base on each palette
  tps_fcn <- function(pal_num){

    pal <- names(si_palettes[pal_num])

    pal <- pal %>%
      str_replace_all("_", " ") %>%
      str_remove(" colors") %>%
      str_to_title() %>%
      str_replace("Siei", "OHA") %>%
      str_replace("Usaid", "USAID") %>%
      str_replace(" D$", " (cat)") %>%
      str_replace(" C$", " (mono)") %>%
      str_replace(" T$", " (tint)") %>%
      str_replace("Achv", "Achievement") %>%
      str_replace("(?<!(Pair|Agencie))s$", "s (mono)") %>%
      str_replace("(Denim|Rose|Blue|Seinna|Scooter|Sand|Genoa)$", "\\1 (cat)") %>%
      paste("OHA", .) %>%
      str_replace("OHA (OHA|USAID)", "\\1")

    theme <- glue('   <color-palette name="{pal}" type = "regular">')

    col <- si_palettes[pal_num] %>%
      unlist()

    col <-  glue('   <color>{col}</color>') %>%
      paste(collapse = " \n")

    paste(theme, '\n', col, '\n   </color-palette>\n\n')
  }

# SETUP PALETTES FOR EXPORT -----------------------------------------------

  #run fcn for each set of palettes - SIEI, all SIEI colors, SIEI Sequential, USAID
  index_siei <- str_which(names(si_palettes), "(siei|siei_pairs)$")
  siei <- map(index_siei, tps_fcn) %>% unlist() %>% paste0(collapse = "")
  index_all_col <- str_which(names(si_palettes), "midnight_blue|viking|electric_indigo|orchid_bloom|sun_kissed|hunter|lavender_haze|tango")
  all_col <- map(index_all_col, tps_fcn) %>% unlist() %>% paste0(collapse = "")
  index_seq <- str_which(names(si_palettes), "_(t|c)$")
  seq <- map(index_seq, tps_fcn) %>%
    unlist() %>%
    paste0(collapse = "") %>%
    str_replace_all("mono", "seq") %>%
    str_replace_all("regular", "ordered-sequential")
  index_other <- str_which(names(si_palettes), "(siei_achv|siei_agencies)$")
  other <- map(index_other, tps_fcn) %>% unlist() %>% paste0(collapse = "")

  #run fcn for each set of classic palettes
  index_siei_classic <- str_which(names(si_palettes), "(siei_classic|siei_classic_pairs)$")
  siei_classic <- map(index_siei_classic, tps_fcn) %>% unlist() %>% paste0(collapse = "")
  index_all_col_classic <- str_which(names(si_palettes), "denim|old_rose|moody_blue|burnt_sienna|scooter|golden_sand|genoa")
  all_col_classic <- map(index_all_col_classic, tps_fcn) %>% unlist() %>% paste0(collapse = "")
  index_seq_classic <- str_which(names(si_palettes), "(denim|old_rose|moody_blue|burnt_sienna|scooter|golden_sand|genoa)s$")
  seq_classic <- map(index_seq_classic, tps_fcn) %>%
    unlist() %>%
    paste0(collapse = "") %>%
    str_replace_all("mono", "seq") %>%
    str_replace_all("regular", "ordered-sequential")
  index_other_classic <- str_which(names(si_palettes), "(siei_classic_achv|siei_classic_agencies|usaid_colors)$")
  other_classic <- map(index_other_classic, tps_fcn) %>% unlist() %>% paste0(collapse = "")

  #pull it all together for the file
  txt <-
    paste("<?xml version = '1.0'>",
          "<workbook>",
          "   <preferences>",
          siei,
          all_col,
          seq,
          other,
          siei_classic,
          all_col_classic,
          seq_classic,
          other_classic,
          "   </preferences>",
          "</workbook>",
          sep = "\n")

  #review
  cat(txt)

# README CREATION ---------------------------------------------------------

  txt_readme <- glue("
    ### How to import OHA Color Palettes into Tableau
    adapted from ICPI
    updated: {Sys.Date()}

    #### Instructions
    1. Edit your local preferences file (Preferences.tps) located in your My Tableau Repository (by default, its found under My Documents). The file is a basic XML file that you can open in a text editor to modify.
    2. Open the Preferences.tps file with any Text Editor (e.g. Notepad, Notepad ++, Sublime, VSCode, Atom, etc.)
    3. Copy and paste the color palette code (found between the preference lines) in the Preferences.tps file.
    4. Save the Preferences.tps file and restart Tableau. You'll see the new color palettes in Tableau.

    #### Included Palettes
    - OHA
    - OHA Pairs
    - OHA Midnight Blue (cat)
    - OHA Viking (cat)
    - OHA Electric Indigo (cat)
    - OHA Orchid Bloom (cat)
    - OHA Sun Kissed (cat)
    - OHA Hunter (cat)
    - OHA Lavender Haze (cat)
    - OHA Tango (cat)
    - OHA Midnight Blue (tint)
    - OHA Viking (tint)
    - OHA Slate (tint)
    - OHA Electric Indigo (tint)
    - OHA Orchid Bloom (tint)
    - OHA Sun Kissed (tint)
    - OHA Hunter (tint)
    - OHA Lavender Haze (tint)
    - OHA Tango (tint)
    - OHA Midnight Blue (mono)
    - OHA Viking (mono)
    - OHA Slate (mono)
    - OHA Electric Indigo (mono)
    - OHA Orchid Bloom (mono)
    - OHA Sun Kissed (mono)
    - OHA Hunter (mono)
    - OHA Lavender Haze (mono)
    - OHA Tango (mono)
    - OHA Achievement
    - OHA Agencies
    - OHA Classic
    - OHA Classic Pairs
    - OHA Denim (cat)
    - OHA Old Rose (cat)
    - OHA Moody Blue (cat)
    - OHA Burnt Sienna
    - OHA Scooter (cat)
    - OHA Golden Sand (cat)
    - OHA Genoa (cat)
    - OHA Denims (mono)
    - OHA Old Roses (mono)
    - OHA Moody Blues (mono)
    - OHA Burnt Siennas (mono)
    - OHA Scooters (mono)
    - OHA Golden Sands (mono)
    - OHA Genoas (mono)
    - OHA Trolley Greys (mono)
    - OHA Classic Achievement
    - OHA Classic Agencies
    - USAID

    For more info:
      - https://onlinehelp.tableau.com/current/pro/desktop/en-us/formatting_create_custom_colors.htm
      "
  )

  #review
  # cat(txt_readme)

# EXPORT ------------------------------------------------------------------

  #write files
  out <- tempdir()
  writeLines(txt, file.path(out, "Preferences.tps"))
  writeLines(txt_readme, file.path(out, "README.txt"))

  #zip files
  zip_folder <- file.path(out, "OHA_Colors_Tableau_2024.zip")
  files <- list.files(out, "tps|txt|png", full.names = TRUE)
  zip(zip_folder, files, extras = "-j")

  #upload to drive
  drive_put(zip_folder,
            path = as_id("15n_QOPOmGIKGnf1qHlc6ccMC3PsEA1v-"),
            name = basename(zip_folder))


