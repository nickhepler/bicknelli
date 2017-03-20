# New York Breeding Bird Atlas #
__Examination of Populations of the Bicknell's Thrush (Catharus Bicknelli) in New York State__

_[Nick Hepler](http://www.albany.edu/~nh998156/), [University at Albany](http://www.albany.edu), [College of Engineering and Applied Sciences](http://www.albany.edu/ceas/)_

![Bicknell's thrush (Catharus bicknelli)](https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Bicknells_Thrush_From_The_Crossley_ID_Guide_Eastern_Birds.jpg/320px-Bicknells_Thrush_From_The_Crossley_ID_Guide_Eastern_Birds.jpg "Bicknells Thrush From The Crossley ID Guide Eastern Birds")

## Summary ##
This project examines populations of the Bicknell's thrush (Catharus bicknelli) using data from the *First & Second Atlases of Breeding Birds of New York*. The data documents the distribution of the state’s avifauna during two distinct time periods: 1980-1985 and 2000-2005. Over 4,300 individuals submitted data during the first atlas yielding a final, cumulative dataset of over 361,583 records. Over 1,200 individuals submitted data for the second atlas project, resulting in a final database of 519,570 records. The objective of this project is to study changes in the bird’s population, breeding status, and habitat preferences.

The objective of the author was to utilize the `R` language and environment for statistical computing and graphics to create a reproducible research project. The project employed [Hadley Wickham](http://hadley.nz/)'s [tidyverse](http://tidyverse.org/); a collection of `R` packages and principles as outlined in the [R for Data Science](http://r4ds.had.co.nz/) book. The project performs the following steps with the data:

1.   Import
1.   Tidy
1.   Tranform
1.   Visualize

The final report was  written using [R Markdown]( http://rmarkdown.rstudio.com/) from [RStudio](http://rstudio.com/).

## Source Data ##
The following resources concerning the raw data are provided through the New York State Open Data website:
*   [Breeding Bird Atlas Data](https://data.ny.gov/api/views/vk8g-ypxi/rows.csv?accessType=DOWNLOAD)
*   [Breeding Bird Atlas Data Overview](https://data.ny.gov/api/views/vk8g-ypxi/files/3h1Sws5-BKFpDXCx8bqD93I6I3l7oEKGZiXP_jSTGrQ?download=true&filename=NYSDEC_BreedinBirdAtlas_Overview.pdf)
*   [Breeding Bird Atlas Data Dictionary](https://data.ny.gov/api/views/vk8g-ypxi/files/qROkFDnLWBLWn2p2zN3vxJG1-eiOMaDU6mCB47rX8KM?download=true&filename=NYSDEC_BreedingBirdAtlas_DataFileLayout.pdf)

### Project Architecture ###
This project utilized a modified version of the [`ProjectTemplate`](http://projecttemplate.net/) package [architecture](http://projecttemplate.net/architecture.html)  available in `R`.

### Required Packages & Versions ###
The following version of `R` was used along with the following packages. These are required to complete the analysis. The version information for these packages is included as of the time of final review.
*   [R version 3.3.2 (2016-10-31) "Sincere Pumpkin Patch"](http://www.r-project.org/)
*   [tidyverse: Easily Install and Load 'Tidyverse' Packages](https://cran.r-project.org/web/packages/tidyverse/index.html)

### Coding Standards ##
The [Google's R Style Guide](https://google.github.io/styleguide/Rguide.xml) provides the foundation for the coding standards utilized in the `R` source files.

## License
![alt text](http://www.gnu.org/graphics/gplv3-88x31.png "GNU General Public License")

This program is free software: you can redistribute it and/or modify it under the terms of the [GNU General Public License](http://www.gnu.org/licenses/gpl.txt) as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.

## Citations ##
