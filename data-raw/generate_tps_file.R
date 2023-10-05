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
      str_replace("_", " ") %>%
      str_remove(" colors") %>%
      str_to_title() %>%
      str_replace("Siei", "SIEI") %>%
      str_replace("Usaid", "USAID") %>%
      str_replace("s$", "s (mono)") %>%
      paste("SIEI", .) %>%
      str_replace("SIEI (SIEI|USAID)", "\\1")

    theme <- glue('   <color-palette name="{pal}" type = "regular">')

    col <- si_palettes[pal_num] %>%
      unlist()

    col <-  glue('   <color>{col}</color>') %>%
      paste(collapse = " \n")

    paste(theme, '\n', col, '\n   </color-palette>\n\n')
  }

# SETUP PALETTES FOR EXPORT -----------------------------------------------

  #run fcn for each set of palettes - SIEI, all SIEI colors, SIEI Sequential, USAID
  siei <- tps_fcn(1)
  all_col <- map(2:16, tps_fcn) %>% unlist() %>% paste0(collapse = "")
  seq <- map(9:16, tps_fcn) %>%
    unlist() %>%
    paste0(collapse = "") %>%
    str_replace_all("mono", "seq") %>%
    str_replace_all("regular", "ordered-sequential")
  usaid <- tps_fcn(17)

  #pull it all together for the file
  txt <-
    paste("<?xml version = '1.0'>",
          "<workbook>",
          "   <preferences>",
          siei,
          all_col,
          seq,
          usaid,
          "   </preferences>",
          "</workbook>",
          sep = "\n")

  #review
  # cat(txt)

# README CREATION ---------------------------------------------------------

  txt_readme <- glue("
    ### How to import OHA Color Palettes into Tableau
    adapted from ICPI
    updated: 2021-02-19

    #### Instructions
    1. Edit your local preferences file (Preferences.tps) located in your My Tableau Repository (by default, its found under My Documents). The file is a basic XML file that you can open in a text editor to modify.
    2. Open the Preferences.tps file with any Text Editor like Notepad, Notepad ++, Sublime, Atom etc.
    3. Copy and paste the color palette code (found between the preference lines) in the Preferences.tps file.
    4. Save the Preferences.tps file and restart Tableau. You'll see the new color palettes in Tableau.

    #### Included Palettes
    - OHA (all colors)
    - OHA Pairs (expanded OHA palette)
    - OHA Denim (cat) [ordered categorical colors]
    - OHA Old Rose (cat) [ordered categorical colors]
    - OHA Moody Blue (cat) [ordered categorical colors]
    - OHA Burnt Sienna (cat) [ordered categorical colors]
    - OHA Scooter (cat) [ordered categorical colors]
    - OHA Golden Sand (cat) [ordered categorical colors]
    - OHA Genoa (cat) [ordered categorical colors]
    - OHA Denims (mono) [monochromatic colors]
    - OHA Old Roses (mono) [monochromatic colors]
    - OHA Moody Blues (mono) [monochromatic colors]
    - OHA Burnt Siennas (mono) [monochromatic colors]
    - OHA Scooters (mono) [monochromatic colors]
    - OHA Golden Sands (mono) [monochromatic colors]
    - OHA Genoas (mono) [monochromatic colors]
    - OHA Trolley (mono) [monochromatic colors]
    - OHA Denims (seq) [sequential colors]
    - OHA Old Roses (seq) [sequential colors]
    - OHA Moody Blues (seq) [sequential colors]
    - OHA Burnt Siennas (seq) [sequential colors]
    - OHA Scooters (seq) [sequential colors]
    - OHA Golden Sands (seq) [sequential colors]
    - OHA Genoas (seq) [sequential colors]
    - OHA Trolley Greys (seq) [sequential colors]
    - OHA Agencies (cat)
    - OHA Achievement (cat)
    - USAID (all colors)

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
  zip_folder <- file.path(out, "OHA_Colors_Tableau.zip")
  files <- list.files(out, "tps|txt", full.names = TRUE)
  zip(zip_folder, files, extras = "-j")

  #upload to drive
  drive_put(zip_folder,
            path = as_id("15qhLsQKflVFX-H3KhEK7vRIafQqjOkgF"),
            name = basename(zip_folder))


