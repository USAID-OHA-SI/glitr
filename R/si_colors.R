#' SI-themed color palettes
#'
#' A collection of color palettes gathered by the si team
#' @title SI-theme color palettes
#' @description Sets of color palettes that have been collected by the SI team
#' @importFrom scales show_col
#' @export
#' @examples
#' # List the palettes available
#' \dontrun{
#' names(si_palettes)
#'
#' # Show palettes interpolated
#' si_pal("carto_div_earth", n = 10) %>% scales::show_col(labels = FALSE)
#' si_pal("carto_div_earth", n = 100) %>% scales::show_col(labels = FALSE)
#'}

si_palettes <- list(

    # SIEI recommended colors
    siei = c("#2057a7", "#c43d4d", "#8980cb", "#e07653", "#1e87a5", "#f2bc40", "#287c6f"),

    # SIEI recommended palettes build from base colors
    royals = c("#000c4f", "#002065", "#00347d", "#074895", "#265bab", "#436ec1", "#5b82d8", "#7396ee", "#8badfe", "#a5c5ff", "#bfddff"),

    old_roses = c("#480000", "#630005", "#7f001c", "#990d2e", "#af273d", "#c33c4c", "#d8505d", "#ee636e", "#fc7a83", "#ff989f", "#ffb5ba"),

    moody_blues = c("#000a45", "#171d5a", "#2f2e6f", "#454185", "#5a559b", "#7069b2", "#877ec9", "#9e94e0", "#b5aaf9", "#cfc3ff", "#e9ddff"),

    burnt_siennas = c("#4c0000", "#670901", "#7c2105", "#923417", "#a84728", "#bf5a39", "#d56d4b", "#ec815d", "#fd9873", "#ffb790", "#ffd4ac"),

    scooters = c("#00223a", "#00354f", "#004964", "#005e7a", "#047491", "#228aa8", "#419fbe", "#5bb5d5", "#74ccec", "#8ce4fe", "#a6fdff"),

    golden_sands = c("#3b1500", "#4b2900", "#5e3c00", "#734f00", "#8a6200", "#a27600", "#ba8b00", "#d2a01e", "#eab538", "#fcce52", "#ffec6f"),

    genoas = c("#001b0e", "#002e24", "#004137", "#01564b", "#0d6c5f", "#2d8073", "#459688", "#5cac9e", "#72c3b4", "#89dacb", "#a0f2e2"),

    siei_greys = c("#E6E7E8", "#d1d3d4", "#BCBEC0", "#a7a9ac", "#939598", "#808080", "#6d6e71", "#58595b", "#414042"),

    usaid_colors = c("#002a6c", "#ba0c2f", "#212721", "#0067b9", "#a7c6ed", "#6c6463", "#8C8985", "#cfcdc9"),

    contrast = c("#E4F4EA", "#364352", "#768491", "#C5CAD0", "#BE311F"),
    compliment = c("#6F472E", "#6F827C", "#E4F4EA", "#E4F4EA", "#E4F4EA"),

    outbreak_or = c("#F4E5D2", "#FED79C", "#FBA529", "#FF6600"),
    seablue = c("#4FAFB6", "#98CBD0", "#D5EAEB", "#086EA1"),
    seablue_text = c("#00949D", "#58B2BA", "#B2D8DD", "#2476A6"),

  # Vega palettes
    category10 = c(
      "#1f77b4", "#ff7f0e", "#2ca02c", "#d62728", "#9467bd", "#8c564b",
      "#e377c2", "#7f7f7f", "#bcbd22", "#17becf"
    ),

    category20 = c(
      "#1f77b4", "#aec7e8", "#ff7f0e", "#ffbb78", "#2ca02c", "#98df8a",
      "#d62728", "#ff9896", "#9467bd", "#c5b0d5", "#8c564b", "#c49c94",
      "#e377c2", "#f7b6d2","#7f7f7f", "#c7c7c7", "#bcbd22", "#dbdb8d",
      "#17becf", "#9edae5"
    ),

    category20b = c(
      "#393b79", "#5254a3", "#6b6ecf", "#9c9ede", "#637939",  "#8ca252",
      "#b5cf6b", "#cedb9c", "#8c6d31", "#bd9e39", "#e7ba52", "#e7cb94",
      "#843c39", "#ad494a", "#d6616b", "#e7969c", "#7b4173",
      "#a55194", "#ce6dbd", "#de9ed6"),

    category20c = c(
      "#3182bd", "#6baed6", "#9ecae1", "#c6dbef", "#e6550d", "#fd8d3c",
      "#fdae6b", "#fdd0a2", "#31a354", "#74c476", "#a1d99b", "#c7e9c0",
      "#756bb1", "#9e9ac8", "#bcbddc", "#dadaeb", "#636363", "#969696",
      "#bdbdbd", "#d9d9d9"),

  # Cartodb colors
    carto_burgyl = c("#fbe6c5", "#f5ba98", "#ee8a82", "#dc7176", "#c8586c", "#9c3f5d", "#70284a"),
    carto_sunset = c("#fcde9c", "#faa476", "#f0746e", "#e34f6f", "#dc3977", "#b9257a", "#7c1d6f"),
    carto_teal = c("#d1eeea", "#a8dbd9", "#85c4c9", "#68abb8", "#4f90a6", "#3b738f", "#2a5674"),
    carto_dmint = c("#d2fbd4", "#a5dbc2", "#7bbcb0", "#559c9e", "#3a7c89", "#235d72", "#123f5a"),
    carto_sunset = c("#fcde9c", "#faa476", "#f0746e", "#e34f6f", "#dc3977", "#b9257a", "#7c1d6f"),
    carto_mint = c("#e4f1e1", "#b4d9cc", "#89c0b6", "#63a6a0", "#448c8a", "#287274", "#0d585f"),
    carto_brown = c("#ede5cf", "#e0c2a2", "#d39c83", "#c1766f", "#a65461", "#813753", "#541f3f"),

  # Carto diverging
    carto_div_armyrose = c("#798234", "#a3ad62", "#d0d3a2", "#fdfbe4", "#f0c6c3", "#df91a3", "#d46780"),
    carto_div_fall = c("#3d5941", "#778868", "#b5b991", "#f6edbd", "#edbb8a", "#de8a5a", "#ca562c"),
    carto_div_geyser = c("#008080", "#70a494", "#b4c8a8", "#f6edbd", "#edbb8a", "#de8a5a", "#ca562c"),
    carto_div_temps = c("#009392", "#39b185", "#9ccb86", "#e9e29c", "#eeb479", "#e88471", "#cf597e"),
    carto_div_teal = c("#009392", "#72aaa1", "#b1c7b3", "#f1eac8", "#e5b9ad", "#d98994", "#d0587e"),
    carto_div_tropic = c("#009B9E", "#42B7B9", "#A7D3D4", "#F1F1F1", "#E4C1D9", "#D691C1", "#C75DAB"),
    carto_div_earth = c("#A16928", "#bd925a", "#d6bd8d", "#edeac2", "#b5c8b8", "#79a7ac", "#2887a1")

)



#' @export
#' @description blue color
#' @title si inspired blue
  si_blue = "#2166AC"

#' @export
#' @description light blue
#' @title si inspired  light blue
  si_lblue = "#67A9CF"

#' @export
#' @description dark grey
#' @title si inspired dark grey
  si_dgrey = "#595959"

#' @export
#' @description light orange
#' @title si inspired light orange
  si_lorange = "#f5b9a1"

#' @export
#' @description normal orange
#' @title si inspired orange
  si_orange = "#EF8A62"

#' @export
#' @description dark shade of orange
#' @title si inspired dark orange
  si_dorange = "#D95709"

#' @export
#' @description wapo inspired purple
#' @title wapo inspired light purple
  wapo_lpurple = "#C7ABC7"

#' @export
#' @description wapo inspired light orange
#' @title wapo inspired light orange
  wapo_lorange = "#F4AB67"

#' @export
#' @description wapo inspired push-popish orange
#' @title wapo inspired pushpop orange
  wapo_pushpop = "#FEC693"

#' @export
#' @description wapo inspired light green
#' @title wapo inspired light green
  wapo_lgreen = "#B5D1D0"

#' @export
#' @description wapo inspired light orange
#' @title wapo inspired light orange 2
  wapo_lorange2 = "#EFCAB4"

#' @export
#' @description wapo inspired dark orange
#' @title wapo inspired dark orange
  wapo_dorange = "#DC7C33"

#' @export
#' @description wapo inspired light blue
#' @title wapo inspired light blue
  wapo_lblue = "#B4D5E5"

#' @export
#' @description wapo inspired dark blue
#' @title wapo inspired dark blue
  wapo_dblue = "#3579A8"

#' @export
#' @description wapo inspired light mauve
#' @title wapo inspired light mauve
  wapo_lmauve = "#D8B3D4"

#' @export
#' @description wapo inspired dark mauve
#' @title wapo inspired dark mauve
  wapo_dmauve = "#B68AB8"


# Inspired by Laura Hughes who was inspired by Adobe #grays
#' @export
#' @description lightest grey
#' @title 10k grey
  grey10k = "#E6E7E8"

#' @export
#' @description 20k grey
#' @title 20k grey
  grey20k = "#d1d3d4"

#' @export
#' @description 30k grey
#' @title 30k grey
  grey30k = "#BCBEC0"

#' @export
#' @description 40k grey
#' @title 40k grey
  grey40k = "#a7a9ac"

#' @export
#' @description 50k grey
#' @title 50k grey
  grey50k = "#939598"

#' @export
#' @description 60k grey
#' @title 60k grey
  grey60k = "#808080"

#' @export
#' @description 70k grey
#' @title 70k grey
  grey70k = "#6d6e71"

#' @export
#' @description 80k grey
#' @title 80k grey
  grey80k = "#58595b"

#' @export
#' @description 90k grey
#' @title 90k grey
  grey90k = "#414042"

# USAID specific
#' @export
#' @description usaid blue
#' @title usaid blue
  usaid_blue = "#002a6c"

#' @export
#' @description usaid red
#' @title usaid red
  usaid_red = "#ba0c2f"

#' @export
#' @description usaid black
#' @title usaid black
  usaid_black = "#212721"

#' @export
#' @description usaid medblue
#' @title usaid mdeblue
  usaid_medblue = "#0067b9"

#' @export
#' @description usaid light blue
#' @title usaid light blue
  usaid_lightblue = "#a7c6ed"

#' @export
#' @description usaid dark grey
#' @title usaid dark grey
  usaid_darkgrey = "#6c6463"

#' @export
#' @description usaid med grey
#' @title usaid med grey
  usaid_medgrey = "#6c6463"

#' @export
#' @description usaid light grey
#' @title usaid light grey
  usaid_lightgrey = "#cfcdc9"


# SIEI Recommended  colors
#' @export
#' @description siei denim
#' @title denim
  denim = "#2057a7"

#' @export
#' @description siei old rose
#' @title old rose
  old_rose = "#c43d4d"

#' @export
#' @description siei moody blue
#' @title moody blue
  moody_blue = "#8980cb"

#' @export
#' @description siei burnt sienna
#' @title burnt sienna
  burnt_sienna = "#e07653"

#' @export
#' @description siei scooter
#' @title scotter (grenish blue)
  scooter = "#1e87a5"

#' @export
#' @description siei golden sand
#' @title golden sand
  golden_sand = "#f2bc40"

#' @export
#' @description siei genoa
#' @title genoa (green)
  genoa = "#287c6f"

