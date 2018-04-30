# POINT PATTERN ANALYSIS

# Loading and plotting spatial data
main.sites <- readShapeSpatial("main.sites.shp")
secondary.sites <- readShapeSpatial("secondary.sites.shp")
elev <- raster("elevation.tif") # Load elevation map
str(main.sites)

str(secondary.sites)

# Exploratory plot
# png(filename = paste0(getwd(), "/", "Sites.png"), 
#     width = 600, 
#     height = 600, 
#     units = "px")

plot(elev, 
     main = "Study Area", 
     axes = FALSE) # Inspect data

plot(main.sites, 
     col = "red", 
     pch = 16, 
     add = TRUE)

plot(secondary.sites, 
     col = "blue", 
     pch = 17, 
     add = TRUE)

legend("bottomleft", 
       title = "Site types", 
       c("Primary", "Secondary"), 
       pch = c(16, 17), 
       col = c("red", "blue"))