#generate the tint objects and roxygen as well as the list for pkgdown.yml

si_palettes <-
  list(
    midnight_blue_t =    c("#15478A", "#446CA1", "#7391B9", "#8AA3C5", "#D0DAE8"),
    viking_t =           c("#5BB5D5", "#7CC4DD", "#9DD3E6", "#BDE1EE", "#DEF0F7"),
    slate_t =            c("#8C8C91", "#A3A3A7", "#BABABD", "#D1D1D3", "#E8E8E9"),
    electric_indigo_t =  c("#3B5BBE", "#627CCB", "#899DD8", "#B1BDE5", "#D8DEF2"),
    orchid_bloom_t =     c("#E14BA1", "#E571B0", "#EB95C4", "#F2B8D7", "#F8DCEB"),
    sun_kissed_t =       c("#F9C555", "#FAD177", "#FBDC99", "#FDE8BB", "#FEF3DD"),
    hunter_t =           c("#419164", "#67A784", "#8DBDA2", "#B3D3C1", "#D9E9E0"),
    lavender_haze_t =    c("#876EC4", "#9F8BD0",  "#B7A8DC","#CFC5E7", "#E7E2F3"),
    tango_t =            c("#F36428", "#F58353", "#F8A27E", "#FAC1A9", "#FDE0D4")
  )


generate_tint_objects <- function(palette_list, output_file) {
  # Open a connection to the output file
  con <- file(output_file, open = "wt")

  # Iterate through each color palette in the list
  for (color_name in names(palette_list)) {
    tints <- palette_list[[color_name]]
    tint_levels <- c(100, 80, 60, 40, 20)  # Tint percentages

    for (i in seq_along(tints)) {
      # Generate Roxygen documentation
      roxygen <- sprintf(
        "#' @title %s @ %d%% tint\n#' @description\n#' One of the five shades of %s. The number is a percent of the\n#' original color, ranging from 100 (100%%) down to 20 (20%%) at 20%% intervals.\n#' The lower the number, the lighter the tint of the original color.\n#' @export\n#' @family SIEI tints",
        gsub("_t$", "", color_name),
        tint_levels[i],
        gsub("_t$", "", color_name)
      )

      # Generate the object
      tint_object <- sprintf("%s_%d <- \"%s\"",
                             gsub("_t$", "", color_name),
                             tint_levels[i],
                             tints[i])

      # Write Roxygen and object to the file
      writeLines(c(roxygen, tint_object, ""), con)
    }
  }

  # Close the connection
  close(con)
}

# Example Usage
generate_tint_objects(si_palettes, "../../../Downloads/tint_objects.R")


generate_tint_objects_and_pkgdown <- function(palette_list, output_file, pkgdown_file) {
  # Open a connection to the output file for the objects
  con <- file(output_file, open = "wt")

  # Initialize a vector to store object names for _pkgdown.yml
  pkgdown_entries <- c()

  # Iterate through each color palette in the list
  for (color_name in names(palette_list)) {
    tints <- palette_list[[color_name]]
    tint_levels <- c(100, 80, 60, 40, 20)  # Tint percentages

    for (i in seq_along(tints)) {
      # Create object name
      object_name <- sprintf("%s_%d", gsub("_t$", "", color_name), tint_levels[i])

      # Add to pkgdown entries
      pkgdown_entries <- c(pkgdown_entries, sprintf("-  %s", object_name))

      # Generate Roxygen documentation
      roxygen <- sprintf(
        "#' @title %s %d%% tint\n#' @description\n#' One of the five shades of %s. The number is a percent of the\n#' original color, ranging from 100 (100%%) down to 20 (20%%) at 20%% intervals.\n#' The lower the number, the lighter the tint of the original color.\n#' @export\n#' @family SIEI tints",
        gsub("_t$", "", color_name),
        tint_levels[i],
        gsub("_t$", "", color_name)
      )

      # Generate the object
      tint_object <- sprintf("%s <- \"%s\"", object_name, tints[i])

      # Write Roxygen and object to the file
      writeLines(c(roxygen, tint_object, ""), con)
    }
  }

  # Close the connection for the objects file
  close(con)

  # Write pkgdown entries to the specified file
  writeLines(pkgdown_entries, pkgdown_file)
}

# Example Usage
generate_tint_objects_and_pkgdown(
  palette_list = si_palettes,
  output_file = "../../../Downloads/tint_objects2.R",
  pkgdown_file = "../../../Downloads/_pkgdown.yml"
)


generate_vignette_output <- function(palette_list, vignette_file) {
  # Open a connection to the vignette file
  con <- file(vignette_file, open = "wt")

  # Write the header for the vignette section
  writeLines("### OHA Palette Tints", con)

  # Iterate through each color palette in the list
  for (color_name in names(palette_list)) {
    tints <- palette_list[[color_name]]
    tint_levels <- c(100, 80, 60, 40, 20)  # Tint percentages

    for (i in seq_along(tints)) {
      # Generate the markdown line for the color object
      markdown <- sprintf(
        "- %s_%d <span style=\"background-color:%s\">%s</span>",
        gsub("_t$", "", color_name),
        tint_levels[i],
        tints[i],
        tints[i]
      )

      # Write the markdown line to the file
      writeLines(markdown, con)
    }
  }

  # Close the connection
  close(con)
}

# Example Usage
generate_vignette_output(si_palettes, "../../../Downloads/vignette_palette_tints.md")

