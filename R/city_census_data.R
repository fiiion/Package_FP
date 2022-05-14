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
