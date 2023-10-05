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
