# glitr 0.2
* Add new Patone 2024 color of the year [2023-12-07]
* Resolve bug with `extrafonts` warning [2023-11-15]
* Flag if `extrafonts` is loaded to suggest removal and restart [2023-10-17]
* Update vignettes and examples with `systemfonts` [2023-10-27]
* Implement site build via GitHub Action [2023-10-27]
* Replace the use of `extrafont` with `systemfonts` to work more efficiently across platforms and [obviated need for having to stick with an old version of `Rttf2pt1`](https://stackoverflow.com/questions/61204259/how-can-i-resolve-the-no-font-name-issue-when-importing-fonts-into-r-using-ext/68642855#68642855) [2023-10-23]
* Change the default font to look for and use either Source Sans 3 (preferred) and Source Sans Pro [2023-09-07]

# glitr 0.1.1
* Add documentation on how Tableau TPS file was rendered to `data-raw` for documentaiton purposes [2023-10-05]
* Adds `si_preview` to output a png to see how it looks iteration stage as well as a `si_clear_preview` which can be used to clear out the temporary folder [2023-02-15]
* Include Pantone Color of the Year palette and color vignette [2023-01-23]
* Update README with font installation instructions and duplicated in a vignette [2023-01-23]
* Provide alternative font if Source Sans Pro is not available [2022-08-15]
* Add in package status check from `gagglr` [2022-08-15]
* Update data to reflect new naming conventions as of FY22Q2 (2022-04-08)

# glitr 0.1.0
* Added a new masked dataset for training/demoing, `hfr_mmd`
* New parameter in`si_sytle()` to allow for all black text
  * `FO = TRUE` sets all text to be black throughout

# glitr 0.0.1
* Add `...` to all `si_style()` functions
  * Allows for passing of theme elements not defined in `si_style()`  
  
* Add experimental legend functions to create nice legends
  * `si_legend_fill()` adds a fill-based legend
  * `si_legend_color()` adds a color-based legend

* New parameters incorporated into si_style() function
  * `facet_space` lets you change space between facets
  * `text_scale` allows for scaling of text size for entire plot
  

# glitr 0.0.0.9000
* Add white background to plots rather than having them be tranparent
* Migrate to website
* Fix scale_fill_si and scale_color_si defaults
* Renamed some color stubs (old si_ colors) to siei_
* Started vignetted on how to use glitr themes and colors
