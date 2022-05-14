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


#### attempting to generalize some functions used in my final project

# NOTE: moving these to their own script --
# discovered function "use_r("funcname")" -- from https://www.youtube.com/watch?v=gl9fFmtXFcI

## Function 1: cleaning census data:

clean_census_data <- function(census_table, variable_n) {
  ## census is the census data, variable_n is the variable of interest
  # variable_n should be input as a character string!

  ##### example -- pulling in census data: it should look something like this
    #mpls_income2019 <- get_acs(geography = "tract",
                             #year = 2019,
                             #variables = c(med_earn = "S2001_C01_002E"),
                             #state = "MN",
                             #county = "Hennepin",
                             #survey = "acs5",
                             #output = "wide",
                             #geometry = TRUE)

  # this will return a table with 5 columns:
  # GeoID, Name, med_earn, S2001_C01_002M (error), and geometry
  # we only need med_earn (variable of interest) and geometry

  census_var <- census_table[variable_n]

}



# this function will take in the inputs of census data (at whatever level) and
# (preferably) city boundaries. Then it will crop the data to the boundaries.


city_census_data <- function(census_var, bounds) {
  ## census == census data, bounds == boundaries (shp., etc)

  ### step 1: setting the CRS -------------------------------------
  # we need the CRS of the census data to match boundary data
  # we'll choose to use the census CRS, as this will be consistent

  # creating a new object -- boundary with amended CRS
  bounds_CRS <- st_transform(bounds, st_crs(census))

  ### step 2: intersecting the bounds and the data ----------------
  city_int <- st_intersection(census, bounds_CRS)

  ## this ^ will be returned automatically! yay
  # now I'll try to add documentation...




}
