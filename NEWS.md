# glitr 0.1.0
* Added a new masked dataset for training/demoing, `hfr_mmd`
* New parameter in`si_sytle()` to allow for all black text
  * `FO = TRUE` sets all text to be black throughout

# glitr 0.0.1
* Add `...` to all `si_style()` functions
  * Allows for passing of theme elements not defined in `si_sytle()`  
  
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
