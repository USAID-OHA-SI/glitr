# Available Colors

## Background (from the Color section of the 2024 OHA Data Viz Guide)

The [USAID Graphics Standard Manual](https://www.usaid.gov/branding/gsm)
lays out the two colors found in the agency’s logo as the primary
branding color palette, **USAID Blue** and **USAID Red**. These colors
are used to “reinforce that the aid is From the American people” but
provide a limited range of colors to work with for data visualization.

OHA has developed an offshoot of these colors for visualization,
expanding the number of categorical colors to choose from and creating a
color-blind friendly palette (508 compliant). We started with primary
USAID Blue and used a combination of platforms ([Adobe
Color](https://color.adobe.com/), [Viz
Palette](https://projects.susielu.com/viz-palette),
[Coolors](https://coolors.co/), [Behance](https://behance.net/),
[chroma.js](https://gka.github.io/palettes/), and Adobe Illustrator), to
identify and then modifying an offshoot categorical palette. The **USAID
Red** was dropped due to high saturation and often negative connotations
associated with its use in Western culture to mean threat or danger.
From there, we expanded the identified colors into a full palette of
categorical and continuous/sequential colors using tints. We finally
revisiting the **USAID Blue**, dropping the saturation roughly 20
percent to reduce the stark contrast when used to other graphic elements
in the visualization.

In addition to the color encoding for the visuals, we have also
identified an assortment of grays to be used for the chart elements. The
application of these specific colors for the chart elements further
enhances the visual’s look and feel as an OHA product.

Strategic use of the OHA palette allows for consistent branding and
reduces the time needed to think through color choices in every
visualization. That said, colors should be used meaningfully and thought
should be given to how these standard colors accentuate the
visual/message. If in doubt of what colors to use, try creating a
visualization in black and white first. Then, add color to specific
elements one at a time until data are sufficiently encoded to reinforce
the message.

Outside of the visualization, default to using the USAID branding color
palette and prescribed typeface for all banners, text, and text boxes.
The USAID colors are available for use in graphs and charts, however the
OHA palette is specifically for use in data visualization products
(charts, graphs, visuals etc.).

## Data Viz Guide Standalone Colors

The colors in this section are found in the OHA Data Viz Guide and are
stored in `glitr` as objects that can be directly called/used.

### OHA Primary Palette

- midnight_blue \#15478A
- viking \#5BB5D5
- slate \#8C8C91

### OHA Secondary Palette

- orchid_bloom \#E14BA1
- electric_indigo \#3B5BBE
- sun_kissed \#F9C555
- hunter \#419164
- lavender_haze \#876EC4
- tango \#F36428

### OHA Grays \[Chart Elements\] Palette

- nero \[title\]: \#202020
- matterhorn \[Subtitle/Body, Reference Line\]: \#505050
- suva_grey \[Source/Note\]: \#909090
- whisper \[Shaded Area\]: \#ebebeb
- light_grey \[Grid Line\]: \#d3d3d3

### USAID Primary Palette

- usaid_blue: \#002a6c
- usaid_red: \#ba0c2f

### USAID Secondary Palette

- usaid_black: \#212721
- usaid_medblue: \#0067b9
- usaid_lightblue: \#a7c6ed
- usaid_darkgrey: \#6c6463
- usaid_medgrey: \#8C8985
- usaid_lightgrey: \#cfcdc9

### OHA Tints Colors

- midnight_blue_100 \#15478A
- midnight_blue_80 \#446CA1
- midnight_blue_60 \#7391B9
- midnight_blue_40 \#8AA3C5
- midnight_blue_20 \#D0DAE8
- viking_100 \#5BB5D5
- viking_80 \#7CC4DD
- viking_60 \#9DD3E6
- viking_40 \#BDE1EE
- viking_20 \#DEF0F7
- slate_100 \#8C8C91
- slate_80 \#A3A3A7
- slate_60 \#BABABD
- slate_40 \#D1D1D3
- slate_20 \#E8E8E9
- electric_indigo_100 \#3B5BBE
- electric_indigo_80 \#627CCB
- electric_indigo_60 \#899DD8
- electric_indigo_40 \#B1BDE5
- electric_indigo_20 \#D8DEF2
- orchid_bloom_100 \#E14BA1
- orchid_bloom_80 \#E571B0
- orchid_bloom_60 \#EB95C4
- orchid_bloom_40 \#F2B8D7
- orchid_bloom_20 \#F8DCEB
- sun_kissed_100 \#F9C555
- sun_kissed_80 \#FAD177
- sun_kissed_60 \#FBDC99
- sun_kissed_40 \#FDE8BB
- sun_kissed_20 \#FEF3DD
- hunter_100 \#419164
- hunter_80 \#67A784
- hunter_60 \#8DBDA2
- hunter_40 \#B3D3C1
- hunter_20 \#D9E9E0
- lavender_haze_100 \#876EC4
- lavender_haze_80 \#9F8BD0
- lavender_haze_60 \#B7A8DC
- lavender_haze_40 \#CFC5E7
- lavender_haze_20 \#E7E2F3
- tango_100 \#F36428
- tango_80 \#F58353
- tango_60 \#F8A27E
- tango_40 \#FAC1A9
- tango_20 \#FDE0D4

### OHA Classic Colors (2022)

- denim: \#2057a7
- old_rose: \#c43d4d
- moody_blue: \#8980cb
- burnt_sienna: \#e07653
- scooter: \#1e87a5
- golden_sand: \#f2bc40
- genoa: \#287c6f
- trolley_grey: \#808080

### OHA Classic Light Colors

- denim_light: \#bfddff
- old_rose_light: \#ff939a
- moody_blue_light: \#dfd3ff
- burnt_sienna_light: \#ffcaa2
- scooter_med: \#5BB5D5
- scooter_light: \#83dbfb
- golden_sand_light: \#ffdda2
- genoa_light: \#7ecfc0
- trolley_grey_light: \#e6e6e6

## Additional Standalone Colors

The colors in this section are supplemental colors that can be used or
referenced and are also in `glitr` as objects that can be directly
called/used.

### Gray Palette from Laura D. Hughes who was inspired by Adobe \#grays

- grey10k: \#E6E7E8
- grey20k: \#d1d3d4
- grey30k: \#BCBEC0
- grey40k: \#a7a9ac
- grey50k: \#939598
- grey60k: \#808080
- grey70k: \#6d6e71
- grey80k: \#58595b
- grey90k: \#414042

### Pantone Color of the Year (2000-2025)

- pantone_cerulean: \#9BB7D4
- pantone_fuchsia_rose: \#C74375
- pantone_true_red: \#BF1932
- pantone_aqua_sky: \#7BC4C4
- pantone_tigerlily: \#E2583E
- pantone_blue_turquoise: \#53B0AE
- pantone_sand_dollar: \#DECDBE
- pantone_chili_pepper: \#9B1B30
- pantone_blue_iris: \#5A5B9F
- pantone_mimosa: \#F0C05A
- pantone_honeysuckle : \#D94F70
- pantone_turquoise : \#45B5AA
- pantone_tangerine_tango: \#DD4124
- pantone_emerald: \#009473
- pantone_radiant_orchid: \#AD5E99
- pantone_marsala: \#964F4C
- pantone_serenity: \#93A9D1
- pantone_rose_quartz: \#F7CACA
- pantone_greenery: \#88B04B
- pantone_ultra_violet: \#5F4B8B
- pantone_living_coral: \#FF6F61
- pantone_classic_blue: \#0F4C81
- pantone_ultimate_gray: \#939597
- pantone_illuminating: \#F5DF4D
- pantone_very_peri: \#6768AB
- pantone_viva_magenta: \#BE3455
- pantone_peach_fuzz: \#FEBE98
- pantone_mocha_mousse: \#A47764

### Washington Post Inspired colors

- wapo_lpurple: \#C7ABC7
- wapo_lorange: \#F4AB67
- wapo_pushpop: \#FEC693
- wapo_lgreen: \#B5D1D0
- wapo_lorange2: \#EFCAB4
- wapo_dorange: \#DC7C33
- wapo_lblue: \#B4D5E5
- wapo_dblue: \#3579A8
- wapo_lmauve: \#D8B3D4
- wapo_dmauve: \#B68AB8

## Palettes

These sets of palettes are stored as nested lists in the object
`si_palettes`. To see the full set in R, you can simply run
`si_palettes` in the command line. To access specific palettes, you will
need to call that list, e.g. `si_palettes$hunter_t`, which will return
the full set of colors stored in that palette. You can also call a
specific color in that palette, e.g. `si_palettes$hunter_t[3]`

### OHA

- siei: \#15478A \#5BB5D5 \#8C8C91 \#E14BA1 \#3B5BBE \#F9C555 \#419164
  \#876EC4 \#F36428
- siei_pairs: \#15478A \#7391B9 \#5BB5D5 \#9DD3E6 \#8C8C91 \#BABABD
  \#3B5BBE \#899DD8 \#E14BA1 \#EB95C4 \#F9C555 \#FBDC99 \#419164
  \#8DBDA2 \#876EC4 \#B7A8DC \#F36428 \#F8A27E
- siei_achv: \#F8A27E \#FBDC99 \#5BB5D5 \#697EBC
- siei_agencies: \#15478A \#9DD3E6 \#8DBDA2 \#B7A8DC \#BABABD

### OHA Tints (Ordered)

- midnight_blue_t: \#15478A \#446CA1 \#7391B9 \#8AA3C5 \#D0DAE8
- viking_t: \#5BB5D5 \#7CC4DD \#9DD3E6 \#BDE1EE \#DEF0F7
- slate_t: \#8C8C91 \#A3A3A7 \#BABABD \#D1D1D3 \#E8E8E9
- electric_indigo_t: \#3B5BBE \#627CCB \#899DD8 \#B1BDE5 \#D8DEF2
- orchid_bloom_t: \#E14BA1 \#E571B0 \#EB95C4 \#F2B8D7 \#F8DCEB
- sun_kissed_t: \#F9C555 \#FAD177 \#FBDC99 \#FDE8BB \#FEF3DD
- hunter_t: \#419164 \#67A784 \#8DBDA2 \#B3D3C1 \#D9E9E0
- lavender_haze_t: \#876EC4 \#9F8BD0 \#B7A8DC \#CFC5E7 \#E7E2F3
- tango_t: \#F36428 \#F58353 \#F8A27E \#FAC1A9 \#FDE0D4

### OHA Discrete (Categorical/Ordered)

- midnight_blue_d: \#15478A \#5BB5D5 \#8AA3C4 \#9DD3E6 \#8C8C91
- viking_d: \#5BB5D5 \#15478A \#9DD3E6 \#8AA3C4 \#8C8C91
- electric_indigo_d: \#3B5BBE \#E14BA1 \#F9C555 \#876EC4 \#419164
- orchid_bloom_d: \#E14BA1 \#3B5BBE \#876EC4 \#419164 \#F9C555
- sun_kissed_d: \#F9C555 \#3B5BBE \#5BB5D5 \#F36428 \#419164
- hunter_d: \#419164 \#5BB5D5 \#E14BA1 \#F9C555 \#F36428
- lavender_haze_d: \#876EC4 \#F9C555 \#3B5BBE \#E14BA1 \#5BB5D5
- tango_d: \#F36428 \#876EC4 \#3B5BBE \#419164 \#F9C555

### OHA Continuous (Categorical/Ordered)

- midnight_blue_c: \#1d263e \#26365b \#354772 \#485886 \#5c6b98 \#717ea8
  \#8791b7 \#9ea5c5 \#b5bad2 \#cccfdf
- viking_c: \#324d58 \#3a5e6c \#446f80 \#508093 \#5f92a6 \#71a4b8
  \#86b5c9 \#9ec7d8 \#bad8e5 \#dae8ef
- slate_c: \#3f3f41 \#4f4f51 \#5f5f63 \#707074 \#828286 \#939398
  \#a6a6aa \#b9b9bb \#ccccce \#dfdfe0
- electric_indigo_c: \#282d50 \#333c6f \#424c89 \#545d9e \#686fb1
  \#7c82c1 \#9296ce \#a8aada \#bebfe3 \#d4d4eb
- orchid_bloom_c: \#5e2c46 \#793559 \#92416d \#a9507f \#be6192 \#d075a4
  \#de8bb5 \#eaa3c5 \#f2bcd5 \#f5d6e4
- sun_kissed_c: \#66522d \#796133 \#8c703a \#9f8043 \#b2904f \#c5a15c
  \#d7b26e \#e8c484 \#f5d7a3 \#faebd5
- hunter_c: \#274131 \#2f533d \#3a654b \#48775a \#59896b \#6c9b7e
  \#82ad91 \#9abfa7 \#b5d0be \#d1e1d6
- lavender_haze_c: \#4f3e51 \#644b67 \#79597c \#8d6990 \#9f79a3 \#b18bb4
  \#c29ec4 \#d1b3d3 \#dec8df \#e9dfea
- tango_c: \#65331e \#803e22 \#9a4a29 \#b25934 \#c86a42 \#db7c55
  \#eb916b \#f7a786 \#febfa6 \#fdd9cb

### OHA Classic

- siei_classic: \#2057a7 \#c43d4d \#8980cb \#e07653 \#1e87a5 \#f2bc40
  \#287c6f \#808080
- siei_classic_pairs: \#2057a7 \#BFDDFF \#c43d4d \#FF939A \#8980cb
  \#DFD3FF \#e07653 \#FFCAA2 \#1e87a5 \#83DBFB \#f2bc40 \#FFDDA2
  \#287c6f \#7ECFC0 \#808080 \#E6E6E6
- siei_classic_achv: \#FF939A \#FFCAA2 \#5BB5D5 \#E6E6E6
- siei_classic_agencies: \#2057A7 \#83DBFB \#7ECFC0 \#8980CB \#808080

### OHA Classic Discrete (Ordered)

- denim: \#2057a7 \#1e87a5 \#e07653 \#f2bc40 \#8980cb
- old_rose: \#c43d4d \#1e87a5 \#8980cb \#e07653 \#287c6f
- moody_blue: \#8980cb \#287c6f \#2057a7 \#e07653 \#1e87a5
- burnt_sienna: \#e07653 \#8980cb \#f2bc40 \#c43d4d \#1e87a5
- scooter: \#1e87a5 \#c43d4d \#8980cb \#f2bc40 \#287c6f
- golden_sand: \#f2bc40 \#2057a7 \#287c6f \#e07653 \#8980cb
- genoa: \#287c6f \#8980cb \#f2bc40 \#e07653 \#1e87a5

### OHA Continuous

- denims: \#bfddff \#a5c5ff \#8badfe \#7396ee \#5b82d8 \#436ec1 \#265bab
  \#074895 \#00347d \#002065 \#000c4f
- old_roses: \#ffb5ba \#ff989f \#fc7a83 \#ee636e \#d8505d \#c33c4c
  \#af273d \#990d2e \#7f001c \#630005 \#480000
- moody_blues: \#e9ddff \#cfc3ff \#b5aaf9 \#9e94e0 \#877ec9 \#7069b2
  \#5a559b \#454185 \#2f2e6f \#171d5a \#000a45
- burnt_siennas: \#ffd4ac \#ffb790 \#fd9873 \#ec815d \#d56d4b \#bf5a39
  \#a84728 \#923417 \#7c2105 \#670901 \#4c0000
- scooters: \#a6fdff \#8ce4fe \#74ccec \#5bb5d5 \#419fbe \#228aa8
  \#047491 \#005e7a \#004964 \#00354f \#00223a
- golden_sands: \#ffec6f \#fcce52 \#eab538 \#d2a01e \#ba8b00 \#a27600
  \#8a6200 \#734f00 \#5e3c00 \#4b2900 \#3b1500
- genoas: \#a0f2e2 \#89dacb \#72c3b4 \#5cac9e \#459688 \#2d8073 \#0d6c5f
  \#01564b \#004137 \#002e24 \#001b0e
- trolley_greys: \#E6E7E8 \#D5D7D8 \#C4C6C8 \#B3B5B8 \#A3A4A8 \#939598
  \#838484 \#747576 \#646568 \#535356 \#414042

### USAID

- usaid_colors: \#002a6c \#ba0c2f \#212721 \#0067b9 \#a7c6ed \#6c6463
  \#8C8985 \#cfcdc9

### Cartodb Colors

- carto_burgyl: \#fbe6c5 \#f5ba98 \#ee8a82 \#dc7176 \#c8586c \#9c3f5d
  \#70284a
- carto_sunset: \#fcde9c \#faa476 \#f0746e \#e34f6f \#dc3977 \#b9257a
  \#7c1d6f
- carto_teal: \#d1eeea \#a8dbd9 \#85c4c9 \#68abb8 \#4f90a6 \#3b738f
  \#2a5674
- carto_dmint: \#d2fbd4 \#a5dbc2 \#7bbcb0 \#559c9e \#3a7c89 \#235d72
  \#123f5a
- carto_mint: \#e4f1e1 \#b4d9cc \#89c0b6 \#63a6a0 \#448c8a \#287274
  \#0d585f
- carto_brown: \#ede5cf \#e0c2a2 \#d39c83 \#c1766f \#a65461 \#813753
  \#541f3f

### Carto Diverging

- carto_div_armyrose: \#798234 \#a3ad62 \#d0d3a2 \#fdfbe4 \#f0c6c3
  \#df91a3 \#d46780
- carto_div_fall: \#3d5941 \#778868 \#b5b991 \#f6edbd \#edbb8a \#de8a5a
  \#ca562c
- carto_div_geyser: \#008080 \#70a494 \#b4c8a8 \#f6edbd \#edbb8a
  \#de8a5a \#ca562c
- carto_div_temps: \#009392 \#39b185 \#9ccb86 \#e9e29c \#eeb479 \#e88471
  \#cf597e
- carto_div_teal: \#009392 \#72aaa1 \#b1c7b3 \#f1eac8 \#e5b9ad \#d98994
  \#d0587e
- carto_div_tropic: \#009B9E \#42B7B9 \#A7D3D4 \#F1F1F1 \#E4C1D9
  \#D691C1 \#C75DAB
- carto_div_earth: \#A16928 \#bd925a \#d6bd8d \#edeac2 \#b5c8b8 \#79a7ac
  \#2887a1

### Other

- pantone: \#9BB7D4 \#C74375 \#BF1932 \#7BC4C4 \#E2583E \#53B0AE
  \#DECDBE \#9B1B30 \#5A5B9F \#F0C05A \#D94F70 \#45B5AA \#DD4124
  \#009473 \#AD5E99 \#964F4C \#93A9D1 \#F7CACA \#88B04B \#5F4B8B
  \#FF6F61 \#0F4C81 \#939597 \#F5DF4D \#6768AB \#BE3455 \#FEBE98
- contrast: \#E4F4EA \#364352 \#768491 \#C5CAD0 \#BE311F
- compliment: \#6F472E \#6F827C \#E4F4EA \#E4F4EA \#E4F4EA
- outbreak_or: \#F4E5D2 \#FED79C \#FBA529 \#FF6600
- seablue: \#4FAFB6 \#98CBD0 \#D5EAEB \#086EA1
- seablue_text: \#00949D \#58B2BA \#B2D8DD \#2476A6
- category10: \#1f77b4 \#ff7f0e \#2ca02c \#d62728 \#9467bd \#8c564b
  \#e377c2 \#7f7f7f \#bcbd22 \#17becf
- category20: \#1f77b4 \#aec7e8 \#ff7f0e \#ffbb78 \#2ca02c \#98df8a
  \#d62728 \#ff9896 \#9467bd \#c5b0d5 \#8c564b \#c49c94 \#e377c2
  \#f7b6d2 \#7f7f7f \#c7c7c7 \#bcbd22 \#dbdb8d \#17becf \#9edae5
- category20b: \#393b79 \#5254a3 \#6b6ecf \#9c9ede \#637939 \#8ca252
  \#b5cf6b \#cedb9c \#8c6d31 \#bd9e39 \#e7ba52 \#e7cb94 \#843c39
  \#ad494a \#d6616b \#e7969c \#7b4173 \#a55194 \#ce6dbd \#de9ed6
- category20c: \#3182bd \#6baed6 \#9ecae1 \#c6dbef \#e6550d \#fd8d3c
  \#fdae6b \#fdd0a2 \#31a354 \#74c476 \#a1d99b \#c7e9c0 \#756bb1
  \#9e9ac8 \#bcbddc \#dadaeb \#636363 \#969696 \#bdbdbd \#d9d9d9
