## Create xml file with SIEI Palettes for Excel and other MS Products

# DEPENDENCIES ------------------------------------------------------------

library(tidyverse)
load_all()
library(glue)
library(googledrive)
library(cli)

# FUNCTION - PREP PALETTE TEXT --------------------------------------------

#function to prepare text for xml file base on each palette
xml_fcn <- function(pal_num, folderpath_out = NULL){

  pal <- names(si_palettes[pal_num])

  pal <- pal %>%
    str_replace_all("_", " ") %>%
    str_remove(" colors") %>%
    str_to_title() %>%
    str_replace("Siei", "OHA") %>%
    str_replace("Usaid", "USAID") %>%
    str_remove(" D$") %>%
    # str_replace(" D$", " (cat)") %>%
    # str_replace(" C$", " (mono)") %>%
    # str_replace(" T$", " (tint)") %>%
    str_replace("Achv", "Achievement") %>%
    str_replace("(?<!(Pair|Agencie))s$", "s (mono)") #%>%
    # str_replace("(Denim|Rose|Blue|Sienna|Scooter|Sand|Genoa)$", "\\1 (cat)") %>%
    # paste("OHA", .) %>%
    # str_replace("OHA (OHA|USAID)", "\\1")

  # theme <- glue('   <color-palette name="{pal}" type = "regular">')
  theme <- glue('<a:clrScheme xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main" name="{pal}">')

  std_bkgrnd <- glue('<a:dk1><a:sysClr val="windowText" lastClr="202020"/></a:dk1><a:lt1><a:sysClr val="window" lastClr="FFFFFF"/></a:lt1><a:dk2><a:srgbClr val="0E2841"/></a:dk2><a:lt2><a:srgbClr val="E8E8E8"/></a:lt2>')

  extra_gray <- case_when(pal %in% c("Midnight Blue", "Viking") ~ si_palettes$slate_t[3],
                    # str_detect(pal, "tint") ~ si_palettes$slate_t[3],
                    str_detect(pal, "cat") ~ slate,
                    TRUE ~ trolley_grey)

  col <- si_palettes[pal_num] %>%
    unlist() %>%
    c(., extra_gray) %>%
    stringr::str_remove("#")

  accents <- map2_chr(c(1:6),
           col,
           ~glue('<a:accent{.x}><a:srgbClr val="{.y}"/></a:accent{.x}>')) %>%
    paste(collapse = "")


  links <- glue('<a:hlink><a:srgbClr val="467886"/></a:hlink><a:folHlink><a:srgbClr val="96607D"/></a:folHlink>')

  xml <- paste('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n',
        theme, std_bkgrnd, accents, links,
        '</a:clrScheme>')

  if(is.null(folderpath_out))
    return(xml)

  filename <- glue("{pal}.xml")
  writeLines(xml, file.path(out, filename))

  cli_alert_info("Created xml for {.val {pal}}")

}


# README CREATION ---------------------------------------------------------

txt_readme <-
  glue("### How to import SIEI Color Palettes into MS Excel, Word, or PowerPoint
adapted from ICPI
updated: {Sys.Date()}

#### Instructions
  1. Download the zip file of Palettes
  2. Right click on the zipped file and Extract the file and save (anywhere)
  3. Select all the .xml files within the extracted folder and copy the files
  4. Paste the files into the following folder on your computer:
    - For a PC, paste the following path into the Windows Explorer, replacing [yourusername]:
      C:\\Users\\[yourusername]\\AppData\\Roaming\\Microsoft\\Templates\\Document Themes\\Theme Colors
  5. Close out of Excel/Word/PowerPoint and reopen one of the programs to see the color palettes in action.
  6. You can find the location of the new custom color palettes located in the different MS products.
    - Excel - Page Layout > Colors
    - Word - Design > Colors
    - PowerPoint - Design > Color (which is on the right hand side, and may be under a 'Variants' menu)

#### Included Palettes
  - Midnight Blue [ordered categorical colors]
  - Viking [ordered categorical colors]
  - Electric Indigo [ordered categorical colors]
  - Orchid Bloom [ordered categorical colors]
  - Sun Kissed [ordered categorical colors]
  - Hunter [ordered categorical colors]
  - Lavender Haze [ordered categorical colors]
  - Tango [ordered categorical colors]

  - Denim [ordered categorical colors]
  - Old Rose [ordered categorical colors]
  - Moody Blue [ordered categorical colors]
  - Burnt Sienna [ordered categorical colors]
  - Scooter [ordered categorical colors]
  - Golden Sand [ordered categorical colors]
  - Genoa [ordered categorical colors]

  For more info:
  - https://support.microsoft.com/en-us/office/change-a-theme-and-make-it-the-default-in-word-or-excel-c846f997-968e-4daa-b2d4-42bd2afef904
  "
)


# EXPORT ------------------------------------------------------------------

  #write files
  out <- tempdir()

  #export files
  index_all_col <- str_which(names(si_palettes), "(midnight_blue|viking|electric_indigo|orchid_bloom|sun_kissed|hunter|lavender_haze|tango)_d")
  all_col <- walk(index_all_col, ~xml_fcn(.x, out))
  index_all_col_classic <- str_which(names(si_palettes), "(denim|old_rose|moody_blue|burnt_sienna|scooter|golden_sand|genoa)(?!s)")
  all_col_classic <- walk(index_all_col_classic, ~xml_fcn(.x, out))

  writeLines(txt_readme, file.path(out, "README.txt"))

  #zip files
  zip_folder <- file.path(out, "OHA_Colors_MS-Products_2024.zip")
  files <- list.files(out, "xml|txt|png", full.names = TRUE)
  zip(zip_folder, files, extras = "-j")

  #upload to drive
  drive_put(zip_folder,
            path = as_id("15n_QOPOmGIKGnf1qHlc6ccMC3PsEA1v-"),
            name = basename(zip_folder))
