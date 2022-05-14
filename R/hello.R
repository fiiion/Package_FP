# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

hello <- function() {
  print("Hello, world!")
}


#### attempting to generalize an algorithm used in my final project

# this function will take in the inputs of census data (at whatever level) and
# (preferably) city boundaries. Then it will crop the data to the boundaries.



city_census_data <- function(census, bounds) {  ## census == census data, bounds == boundaries (shp., etc)
  ### step 1: setting the CRS -------------------------------------
  # we need the CRS of the census data to match boundary data
  # we'll choose to use the census CRS, as this will be consistent

  # creating a new object -- boundary with amended CRS
  bounds_CRS <- st_transform(bounds, st_crs(census))

  ### step 2: intersecting the bounds and the data
  city_int <- st_intersection(census, bounds_CRS)

  ## this ^ will be returned automatically! yay
  # now I'll try to add documentation...




}
