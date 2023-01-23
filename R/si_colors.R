#' @title List of SI Color Palettes
#'
#' @description
#' Sets of color palettes that have been collected by the SI team.
#' Includes all colors from the SIEI data visualization guide and a few additional palettes.
#' Colors are stored as a named list. Use palette name or position to call in colors.
#'
#' Color sets are stored as the name of the first color.
#' Calling `si_palettes$old_rose` will return the five color pairs where old_rose is the base.
#' Calling `si_palettes$old_roses` will return an interpolated ramp of 11 colors for old_rose.
#' See the SIEI data visualization guide for additional details.
#'
#' @importFrom scales show_col
#'
#' @export
#'
#' @seealso [si_rampr] for details on creating interpolated palettes of varying lengths.
#'
#' @examples
#' \dontrun{
#' # List names of palettes available
#' names(si_palettes)
#'
#' scales::show_col(si_palettes$siei)
#' scales::show_col(si_palettes$old_roses)
#'
#' # Show palettes interpolated
#' si_rampr("carto_div_earth", n = 10) %>% scales::show_col(labels = T)
#' si_rampr("carto_div_earth", n = 100) %>% scales::show_col(labels = FALSE)
#'}

si_palettes <- list(

    # SIEI recommended colors
    siei = c("#2057a7", "#c43d4d", "#8980cb", "#e07653", "#1e87a5", "#f2bc40", "#287c6f", "#808080"),

    # SIEI recommended categorical palettes
    denim = c("#2057a7","#1e87a5", "#e07653", "#f2bc40", "#8980cb"),
    old_rose = c("#c43d4d", "#1e87a5", "#8980cb", "#e07653", "#287c6f"),
    moody_blue = c("#8980cb", "#287c6f", "#2057a7", "#e07653", "#1e87a5"),
    burnt_sienna = c("#e07653", "#8980cb", "#f2bc40", "#c43d4d", "#1e87a5"),
    scooter = c("#1e87a5", "#c43d4d", "#8980cb", "#f2bc40", "#287c6f"),
    golden_sand = c("#f2bc40", "#2057a7", "#287c6f", "#e07653", "#8980cb"),
    genoa = c("#287c6f", "#8980cb", "#f2bc40", "#e07653", "#1e87a5"),
    siei_achv = c("#FF939A", "#FFCAA2", "#5BB5D5", "#E6E6E6"),

    # SIEI recommended palettes build from base colors
    siei_pairs = c("#2057a7", "#BFDDFF", "#c43d4d", "#FF939A", "#8980cb", "#DFD3FF", "#e07653", "#FFCAA2", "#1e87a5", "#83DBFB", "#f2bc40", "#FFDDA2", "#287c6f", "#7ECFC0", "#808080", "#E6E6E6"),

    denims = c("#bfddff", "#a5c5ff", "#8badfe", "#7396ee", "#5b82d8", "#436ec1", "#265bab", "#074895", "#00347d", "#002065", "#000c4f"),

    old_roses = c("#ffb5ba", "#ff989f", "#fc7a83", "#ee636e", "#d8505d", "#c33c4c", "#af273d", "#990d2e", "#7f001c", "#630005", "#480000"),

    moody_blues = c("#e9ddff", "#cfc3ff", "#b5aaf9", "#9e94e0", "#877ec9", "#7069b2", "#5a559b", "#454185", "#2f2e6f", "#171d5a", "#000a45"),

    burnt_siennas = c("#ffd4ac", "#ffb790", "#fd9873", "#ec815d", "#d56d4b", "#bf5a39", "#a84728", "#923417", "#7c2105", "#670901", "#4c0000"),

    scooters = c("#a6fdff", "#8ce4fe", "#74ccec", "#5bb5d5", "#419fbe", "#228aa8", "#047491", "#005e7a", "#004964", "#00354f", "#00223a"),

    golden_sands = c("#ffec6f", "#fcce52", "#eab538", "#d2a01e", "#ba8b00", "#a27600", "#8a6200", "#734f00", "#5e3c00", "#4b2900", "#3b1500"),

    genoas = c("#a0f2e2", "#89dacb", "#72c3b4", "#5cac9e", "#459688", "#2d8073", "#0d6c5f", "#01564b", "#004137", "#002e24", "#001b0e"),

    trolley_greys = c("#E6E7E8", "#D5D7D8", "#C4C6C8", "#B3B5B8", "#A3A4A8", "#939598", "#838484", "#747576", "#646568", "#535356", "#414042"),

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
    carto_mint = c("#e4f1e1", "#b4d9cc", "#89c0b6", "#63a6a0", "#448c8a", "#287274", "#0d585f"),
    carto_brown = c("#ede5cf", "#e0c2a2", "#d39c83", "#c1766f", "#a65461", "#813753", "#541f3f"),

  # Carto diverging
    carto_div_armyrose = c("#798234", "#a3ad62", "#d0d3a2", "#fdfbe4", "#f0c6c3", "#df91a3", "#d46780"),
    carto_div_fall = c("#3d5941", "#778868", "#b5b991", "#f6edbd", "#edbb8a", "#de8a5a", "#ca562c"),
    carto_div_geyser = c("#008080", "#70a494", "#b4c8a8", "#f6edbd", "#edbb8a", "#de8a5a", "#ca562c"),
    carto_div_temps = c("#009392", "#39b185", "#9ccb86", "#e9e29c", "#eeb479", "#e88471", "#cf597e"),
    carto_div_teal = c("#009392", "#72aaa1", "#b1c7b3", "#f1eac8", "#e5b9ad", "#d98994", "#d0587e"),
    carto_div_tropic = c("#009B9E", "#42B7B9", "#A7D3D4", "#F1F1F1", "#E4C1D9", "#D691C1", "#C75DAB"),
    carto_div_earth = c("#A16928", "#bd925a", "#d6bd8d", "#edeac2", "#b5c8b8", "#79a7ac", "#2887a1"),

  #Pantone Colors of the Year (descending)
    pantone = c("#BE3455", "#6768AB", "#F5DF4D", "#939597", "#0F4C81", "#FF6F61",
                "#5F4B8B", "#88B04B", "#F7CACA", "#93A9D1", "#964F4C", "#AD5E99",
                "#009473", "#DD4124", "#45B5AA", "#D94F70", "#F0C05A", "#5A5B9F",
                "#9B1B30", "#DECDBE", "#53B0AE", "#E2583E", "#7BC4C4", "#BF1932",
                "#C74375", "#9BB7D4")

)


#' @export
#' @description wapo inspired purple "#C7ABC7"
#' @title wapo inspired light purple
#' @family Washington Post inspired
  wapo_lpurple = "#C7ABC7"

#' @export
#' @description wapo inspired light orange "#F4AB67"
#' @title wapo inspired light orange
#' @family Washington Post inspired
  wapo_lorange = "#F4AB67"

#' @export
#' @description wapo inspired push-popish orange "#FEC693"
#' @title wapo inspired pushpop orange
#' @family Washington Post inspired
  wapo_pushpop = "#FEC693"

#' @export
#' @description wapo inspired light green "#B5D1D0"
#' @title wapo inspired light green
#' @family Washington Post inspired
  wapo_lgreen = "#B5D1D0"

#' @export
#' @description wapo inspired light orange "#EFCAB4"
#' @title wapo inspired light orange 2
#' @family Washington Post inspired
  wapo_lorange2 = "#EFCAB4"

#' @export
#' @description wapo inspired dark orange "#DC7C33"
#' @title wapo inspired dark orange
#' @family Washington Post inspired
  wapo_dorange = "#DC7C33"

#' @export
#' @description wapo inspired light blue "#B4D5E5"
#' @title wapo inspired light blue
#' @family Washington Post inspired
  wapo_lblue = "#B4D5E5"

#' @export
#' @description wapo inspired dark blue "#3579A8"
#' @title wapo inspired dark blue
#' @family Washington Post inspired
  wapo_dblue = "#3579A8"

#' @export
#' @description wapo inspired light mauve "#D8B3D4"
#' @title wapo inspired light mauve
#' @family Washington Post inspired
  wapo_lmauve = "#D8B3D4"

#' @export
#' @description wapo inspired dark mauve "#B68AB8"
#' @title wapo inspired dark mauve
#' @family Washington Post inspired
  wapo_dmauve = "#B68AB8"


# Inspired by Laura D. Hughes who was inspired by Adobe #grays


#' @export
#' @description
#' One of the nine shades of grey included. The lower the k-value, the lighter the shade.
#' grey10k is the lightest grey. hex value: "#E6E7E8".
#' Useful for light reference lines, boxes or other areas.
#' @title grey10k
#' @family greys
  grey10k = "#E6E7E8"

#' @export
#' @description
#' One of the nine shades of grey included. The lower (higher) the k-value, the lighter (darker) the shade.
#' hex value: "#d1d3d4"
#' @title grey20k
#' @family greys
  grey20k = "#d1d3d4"

#' One of the nine shades of grey included.
#' @export
#' @description
#' One of the nine shades of grey included. The lower (higher) the k-value, the lighter (darker) the shade.
#' hex value: "#BCBEC0"
#' @title grey30k
#' @family greys
  grey30k = "#BCBEC0"

#' @export
#' @description
#' One of the nine shades of grey included. The lower (higher) the k-value, the lighter (darker) the shade.
#' hex value: "#a7a9ac"
#' @title grey40k
#' @family greys
  grey40k = "#a7a9ac"

#' @export
#' @description
#' One of the nine shades of grey included. The lower (higher) the k-value, the lighter (darker) the shade.
#' hex value: "#939598"
#' @title grey50k
#' @family greys
  grey50k = "#939598"

#' @export
#' @description
#' One of the nine shades of grey included. The lower (higher) the k-value, the lighter (darker) the shade.
#' hex value: "#808080"
#' @title grey60k
#' @family greys
  grey60k = "#808080"

#' @export
#' @description
#' One of the nine shades of grey included. The lower (higher) the k-value, the lighter (darker) the shade.
#' hex value: "#6d6e71"
#' @title grey70k
#' @family greys
  grey70k = "#6d6e71"

#' @export
#' @description
#' One of the nine shades of grey included. The lower (higher) the k-value, the lighter (darker) the shade.
#' hex value: "#58595b"
#' @title grey80k
#' @family greys
  grey80k = "#58595b"

#' @export
#' @description
#' One of the nine shades of grey included. The lower (higher) the k-value, the lighter (darker) the shade.
#' grey90k is the darkest grey.
#' hex value: "#414042"
#' @title grey90k
#' @family greys
  grey90k = "#414042"

# USAID specific
#' @export
#' @description
#' USAID blue "#002a6c"
#' @title USAID blue
#' @family USAID colors
  usaid_blue = "#002a6c"

#' @export
#' @description
#' USAID red "#ba0c2f"
#' @title USAID red
#' @family USAID colors
  usaid_red = "#ba0c2f"

#' @export
#' @description
#' USAID black "#212721"
#' @title USAID black
#' @family USAID colors
  usaid_black = "#212721"

#' @export
#' @description
#' USAID medium blue "#0067b9"
#' @title USAID medium blue
#' @family USAID colors
  usaid_medblue = "#0067b9"

#' @export
#' @description
#' USAID light blue "#a7c6ed"
#' @title USAID light blue
#' @family USAID colors
  usaid_lightblue = "#a7c6ed"

#' @export
#' @description
#' USAID dark grey "#6c6463"
#' @title USAID dark grey
#' @family USAID colors
  usaid_darkgrey = "#6c6463"

#' @export
#' @description
#' USAID med grey "#8C8985"
#' @title USAID med grey
#' @family USAID colors
  usaid_medgrey = "#8C8985"

#' @export
#' @description
#' USAID light grey "#cfcdc9"
#' @title USAID light grey
#' @family USAID colors
  usaid_lightgrey = "#cfcdc9"


# SIEI Recommended  colors
#' @family SIEI colors
#' @export
#' @description SIEI denim
#' @title denim
  denim = "#2057a7"


#' @family SIEI colors
#' @export
#' @description SIEI denim light
#' @title denim light
  denim_light = "#bfddff"

#' @export
#' @description SIEI old rose
#' @title old rose light
  old_rose = "#c43d4d"

#' @family SIEI colors
#' @export
#' @description SIEI old rose light
#' @title old rose light
  old_rose_light = "#ff939a"

#' @family SIEI colors
#' @export
#' @description SIEI moody blue
#' @title moody blue
  moody_blue = "#8980cb"

#' @family SIEI colors
#' @export
#' @description SIEI moody blue light
#' @title moody blue light
  moody_blue_light = "#dfd3ff"

#' @family SIEI colors
#' @export
#' @description SIEI burnt sienna
#' @title burnt sienna
  burnt_sienna = "#e07653"

#' @family SIEI colors
#' @export
#' @description SIEI burnt sienna light
#' @title burnt sienna light
  burnt_sienna_light = "#ffcaa2"

#' @family SIEI colors
#' @export
#' @description SIEI scooter
#' @title scooter
  scooter = "#1e87a5"

#' @family SIEI colors
#' @export
#' @description SIEI scooter medium
#' @title scooter medium
  scooter_med = "#5BB5D5"

#' @family SIEI colors
#' @export
#' @description SIEI scooter light
#' @title scooter light
  scooter_light = "#83dbfb"

#' @family SIEI colors
#' @export
#' @description SIEI golden sand
#' @title golden sand
  golden_sand = "#f2bc40"


#' @family SIEI colors
#' @export
#' @description SIEI golden sand light
#' @title golden sand light
  golden_sand_light = "#ffdda2"


#' @family SIEI colors
#' @export
#' @description SIEI genoa
#' @title genoa (green)
  genoa = "#287c6f"

#' @family SIEI colors
#' @export
#' @description SIEI genoa light
#' @title genoa light (green)
  genoa_light = "#7ecfc0"

#' @family SIEI colors
#' @export
#' @description SIEI trolley grey
#' @title trolley grey
  trolley_grey = "#808080"

#' @family SIEI colors
#' @export
#' @description SIEI trolley grey light
#' @title trolley grey light
  trolley_grey_light = "#e6e6e6"

#' @family SIEI colors
#' @export
#' @description SIEI nero
#' @title nero
  nero = "#202020"

#' @family SIEI colors
#' @export
#' @description SIEI matterhorn
#' @title matterhorn
  matterhorn = "#505050"

#' @family SIEI colors
#' @export
#' @description SIEI suva grey
#' @title suva grey
  suva_grey = "#909090"

#' @family SIEI colors
#' @export
#' @description SIEI whisper
#' @title whisper
suva_grey = "#ebebeb"

#' @family SIEI colors
#' @export
#' @description SIEI light grey
light_grey = "#e3d3d3"


#' cerulean
#' Pantone Color of the Year 2000
#' @export
#' @family pantone
pantone_cerulean = "#9BB7D4"

#' fuchsia rose
#' Pantone Color of the Year 2001
#' @export
#' @family pantone
pantone_fuchsia_rose = "#C74375"

#' true_red
#' Pantone Color of the Year 2002
#' @export
#' @family pantone
pantone_true_red = "#BF1932"

#' aqua sky
#' Pantone Color of the Year 2003
#' @export
#' @family pantone
pantone_aqua_sky = "#7BC4C4"

#' tigerlilly
#' Pantone Color of the Year 2004
#' @export
#' @family pantone
pantone_tigerlily = "#E2583E"

#' blue_turquoise
#' Pantone Color of the Year 2005
#' @export
#' @family pantone
pantone_blue_turquoise = "#53B0AE"

#' sand dollar
#' Pantone Color of the Year 2006
#' @export
#' @family pantone
pantone_sand_dollar = "#DECDBE"

#' chili pepper
#' Pantone Color of the Year 2007
#' @export
#' @family pantone
pantone_chili_pepper = "#9B1B30"

#' blue iris
#' Pantone Color of the Year 2008
#' @export
#' @family pantone
pantone_blue_iris = "#5A5B9F"

#' mimosa
#' Pantone Color of the Year 2009
#' @export
#' @family pantone
pantone_mimosa = "#F0C05A"

#' honeysuckle
#' Pantone Color of the Year 2010
#' @export
#' @family pantone
pantone_honeysuckle  = "#D94F70"

#' turquoise
#' Pantone Color of the Year 2011
#' @export
#' @family pantone
pantone_turquoise  = "#45B5AA"

#' tangerine tango
#' Pantone Color of the Year 2012
#' @export
#' @family pantone
pantone_tangerine_tango = "#DD4124"

#' emerald
#' Pantone Color of the Year 2013
#' @export
#' @family pantone
pantone_emerald = "#009473"

#' radiant orchid
#' Pantone Color of the Year 2014
#' @export
#' @family pantone
pantone_radiant_orchid = "#AD5E99"

#' marsala
#' Pantone Color of the Year 2015
#' @export
#' @family pantone
pantone_marsala = "#964F4C"

#' serenity
#' Pantone Color of the Year 2016
#' @export
#' @family pantone
pantone_serenity = "#93A9D1"

#' rose quartz
#' Pantone Color of the Year 2016
#' @export
#' @family pantone
pantone_rose_quartz = "#F7CACA"

#' greenery
#' Pantone Color of the Year 2017
#' @export
#' @family pantone
pantone_greenery = "#88B04B"

#' ultra violet
#' Pantone Color of the Year 2018
#' @export
#' @family pantone
pantone_ultra_violet = "#5F4B8B"

#' living coral
#' Pantone Color of the Year 2019
#' @export
#' @family pantone
pantone_living_coral = "#FF6F61"

#' classic blue
#' Pantone Color of the Year 2020
#' @export
#' @family pantone
pantone_classic_blue = "#0F4C81"

#' ultimate gray
#' Pantone Color of the Year 2021
#' @export
#' @family pantone
pantone_ultimate_gray = "#939597"

#' illuminating
#' Pantone Color of the Year 2021
#' @export
#' @family pantone
pantone_illuminating = "#F5DF4D"

#' very peri
#' Pantone Color of the Year 2022
#' @export
#' @family pantone
pantone_very_peri = "#6768AB"

#' viva magenta
#' Pantone Color of the Year 2023
#' @export
#' @family pantone
pantone_viva_magenta = "#BE3455"
