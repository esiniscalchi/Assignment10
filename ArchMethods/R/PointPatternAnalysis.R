# POINT PATTERN ANALYSIS

#' Load and Plot Spatial Data for Main Sites Function
#'
#' This function allows you to load and plot spatial data for main sites.
#' @keywords main sites
#' @export
#' @examples
#' main.sites()
main.sites <- readShapeSpatial("main.sites.shp")

#' Load and Plot Spatial Data for Secondary Sites Function
#'
#' This function allows you to load and plot spatial data for secondary sites.
#' @keywords secondary sites
#' @export
#' @examples
#' secondary.sites()
secondary.sites <- readShapeSpatial("secondary.sites.shp")

#' Load Elevation Map Function
#'
#' This function allows you to load the elevation map.
#' @keywords elevation, raster
#' @export
#' @examples
#' elev()
elev <- raster("elevation.tif") 

# Exploratory plot
# png(filename = paste0(getwd(), "/", "Sites.png"), 
#     width = 600, 
#     height = 600, 
#     units = "px")

#' Plot Elevation Function
#'
#' This function allows you to graph the elevation.
#' @keywords elevation
#' @export
#' @examples
#' plot.elev()
plot.elev <- c(elev, 
     main = "Study Area", 
     axes = FALSE) # Inspect data

#' Plot Main Sites Function
#'
#' This function allows you to plot the main sites.
#' @keywords plot, main sites
#' @export
#' @examples
#' plot.mainSites()
plot.mainSites <- c(main.sites, 
     col = "red", 
     pch = 16, 
     add = TRUE)

#' Plot Secondary Sites Function
#'
#' This function allows you to plot the secondary sites.
#' @keywords plot, secondary sites
#' @export
#' @examples
#' plot.secondarySites()
plot.secondarySites <- c(secondary.sites, 
     col = "blue", 
     pch = 17, 
     add = TRUE)

#' Legend Function
#'
#' This function allows you to create a legend for a plot.
#' @keywords legend
#' @export
#' @examples
#' legend()
legend <- c("bottomleft", 
       title = "Site types", 
       c("Primary", "Secondary"), 
       pch = c(16, 17), 
       col = c("red", "blue"))
