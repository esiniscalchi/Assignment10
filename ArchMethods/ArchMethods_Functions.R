# FUNCTIONS

# TEMPO PLOTS IN R FOR ANALYZING RADIOCARBON DATES

# Yield the MCMC output
MCMC_sample("loi-mcmc", 25, 100000)

# Read the MCMC output
mcmc <- readr::read_csv("loi-mcmc.csv") # convert colnames to read.csv style
names(mcmc) <- make.names(names(mcmc))

colnames(mcmc)

# Select and confirm columns to plot
i <- c(43, 46, 49, 52, 55, 58, 61, 64, 67, 70, 73, 76, 79, 82, 85, 88)
mcmc.select <- mcmc[,i]
colnames(mcmc.select)

# Load and run calc.tempo function
source("tempo-plot-demo-saa-2017.r")

calc.tempo # Used to calculate the tempo plot

calc.tempo <- function(mcmc.data, by.int, out.file="") {
  years <- seq(from = floor(min(mcmc.data)), to = ceiling(max(mcmc.data)), by = by.int)
  res.mat <- matrix(ncol = length(years), nrow = dim(mcmc.data)[1])
  
  for (i in 1:length(years)) {
    gte <- mcmc.data <= years[i]
    res.mat[,i] <- rowSums(gte)
  }
  means <- colMeans(res.mat)
  sds <- apply(res.mat, 2, sd)
  res.df <- data.frame(mean = means, sd = sds, year = years)
  
  if (!(out.file == "")) {
    write.csv(res.df, out.file)
  }
  return(res.df)
}

# Access the data
loi.tempo <- calc.tempo(mcmc.data = mcmc.select, by.in = 10, out.file = "loi-tempo.csv")

# Check calc.tempo outpout
summary(loi.tempo)

# Example plot with plot.tempo
plot.tempo <- function(tempo.data = NULL, in.file = "",  out.file = "", max.x = NA,
                       min.x = NA, y.label = "Cumulative Events",
                       x.label = "Calendar Year", plot.ht = 7,
                       plot.wi = 7){
  library(ggplot2)
  if (is.null(tempo.data)){
    if (in.file == ""){
      stop("No data source")}
    else {
      tempo.data <- read.csv(in.file)}
  }
  h <- ggplot(tempo.data, aes(x = year))
  h <- h + geom_ribbon(aes(ymin = mean - sd, ymax = mean + sd))
  h <- h + geom_line(aes(y = mean))
  h <- h + xlab(x.label) + ylab(y.label)
  if (!(is.na(max.x) | is.na(min.x))){
    h <- h + xlim(min.x, max.x)
  }
  if (!(out.file == "")) {
    ggsave(filename = out.file, plot= h, height = plot.ht, width = plot.wi)
  }
  old.par <- par(no.readonly = T)
  dev.new(width = plot.wi, height = plot.ht)
  print(h)
  par(old.par)
}

plot.tempo(tempo.data = loi.tempo, out.file = "loi-tempo.png", plot.ht = 3)

# Summary
sessionInfo()

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

# QUERYING SPATIAL DATA 
point pattern analysis visualizations

# Visualisation of raw patterns
main.pp <- as.ppp(main.sites) # Coerce into 'ppp' object for spatial statistics
secondary.pp <- as.ppp(secondary.sites)
sites.pp <- superimpose(main.pp, secondary.pp)
intensity(sites.pp)  # Measure intensity of different patterns

# Compute the intensity
allsites <- unmark(sites.pp) # removes "marks" (i.e. descriptors) from point pattern
intensity(allsites) # Intensity (points/unit of area) = 131.0494

# Additional visualisations and stats
plot(d.sites, main = "Density of all sites") # Plot interpolated values
plot(sites.pp, add = T)

# Two different types of sites
par(mfrow=c(1,2)) # Set number of plotting rows to 1 and number of columns to 2
plot(density(main.pp), main = "Density of primary settlements")
plot(density(secondary.pp), main = "Density of satellite settlements")

# Significant spatial relationships
clarkevans.test(secondary.pp, correction = c("Donnelly"), nsim = 999)
clarkevans.test(main.pp, correction = c("Donnelly"), nsim = 999) 

# Exploring spatial relationships: pair-correlation function
plot(pcfcross(
  sites.pp, 
  divisor = "d", 
  correction = "Ripley"), 
  main = "Bivariate pair-correlation function")

# Compare data against the empirical pattern
bivar <- envelope(
  fun = pcfcross, 
  sites.pp, 
  divisor = "d", 
  nsim = 99, 
  correction = c("Ripley")
) 
plot(bivar, main = "Pair-correlation function, with simulation envelope")

# Point process modelling
pwin <- as.owin(c(-0.1, 1.1, -0.1, 1.1)) # 
main.pp$window <- pwin # Assign window
pden <- density(main.pp) # Kernel density estimate of primary settlement sites, to act as covariate
fit.sec <- ppm(unmark(secondary.pp), ~ Cov1, covariates = list(Cov1 = pden)) # Fit point process model with the covariate

plot(predict(fit.sec), 
     main="Predicted distribution of secondary settlements", 
     col = rainbow(255))
points(secondary.pp) # Appears to be somewhat acceptable model;

fit.res <- envelope(
  fun = Kres, 
  secondary.pp, 
  model = fit.sec, 
  nsim = 19, 
  correction = c("Ripley")) # Examine 

par(mfrow = c(1,2)) # Plot with two columns
plot(fit.res, main="Residual K")
abline(v = 0.14, col = "purple")
abline(v = 0.18, col = "purple")
plot(predict(fit.sec), main = "Predicted distribution", col = rainbow(255))
points(secondary.pp)
plot(fit.res, main = "Residual K")
abline(v = 0.14, col = "purple")
abline(v = 0.18, col = "purple")
plot(predict(fit.sec), main = "Predicted distribution", col = rainbow(255))
points(secondary.pp)

# Summary
sessionInfo()

# OCCUPATION AS A FUNCTION OF GEOGRAPHIC VARIALES USING LOGICAL REGRESSION

fileName <- "Test_Iberia.csv" # Set file name
dat <- read.csv(fileName, header=T) # Read in data
head(dat) # View/check data

library(ggplot2)
library(viridis)
map_elev <- 
  ggplot(dat, 
         aes(X, 
             Y,
             colour = elev)) +
  geom_point(size = 2,
             shape = 15) +
  scale_color_viridis() +
  theme_minimal() + 
  coord_equal() +
  ggtitle("Study area with elevation")

map_precip  <- 
  ggplot(dat, 
         aes(X, 
             Y,
             colour = p_min_spr)) +
  geom_point(size = 2,
             shape = 15) +
  scale_color_viridis(option = "C") +
  theme_minimal() + 
  coord_equal() +
  ggtitle("Study area with precipitation")

library(gridExtra)
grid.arrange(map_elev, map_precip)

dat1 <- as.data.frame(cbind(dat[,c(1:4)], (scale(dat[,-c(1:4)])))) # Standardization of predictors
str(dat1) # Verification (make sure the vars are numerical)

# Determine absences
# Tease apart presences and absences, then select a subset of absences and recombine presences (all) and absences (sample)
numAbsences <- 350 ## 10x presences

Presences <- subset(dat1, dat1$LGM == 1)
Absences <- subset(dat1, dat1$LGM == 0)[sample(c(1:dim(dat1)[1]), numAbsences),]

# Final data on which analyses will be run
dat2 <- rbind(Presences, Absences)

# Data table for forward selection (stepAIC)
dat3 <- dat2[,c(2, 5, 6, 7, 8, 9, 10)]
# View/check data
head(dat3)

# Modelling - define formulae
form0 <- formula(LGM ~ 1) # Intercept only model
form1 <- formula(LGM ~ Y + X)
form2 <- formula(LGM ~ elev + slope)
form3 <- formula(LGM ~ t_min_y)
form4 <- formula(LGM ~ elev + slope + p_min_spr)
form5 <- formula(LGM ~ p_min_spr + t_min_y)
form6 <- formula(LGM ~ t_avg_y + p_avg_y)
form7 <- formula(LGM ~ elev + slope + t_avg_y + p_avg_y)
form8 <- formula(LGM~ .) # All variables for step-wise procedure

#Build models
mod.0  <-  glm(form0, family = binomial, data = dat2)
mod.1  <-  glm(form1, family = binomial, data = dat2)
mod.2  <-  glm(form2, family = binomial, data = dat2)
mod.3  <-  glm(form3, family = binomial, data = dat2)
mod.4  <-  glm(form4, family = binomial, data = dat2)
mod.5  <-  glm(form5, family = binomial, data = dat2)
mod.6  <-  glm(form6, family = binomial, data = dat2)
mod.7  <-  glm(form7, family = binomial, data = dat2)
mod.8 <-   stepAIC(glm(form8, family = binomial, data = dat3))

#Summarize AIC results, including weightings. Using modaicavg package
mods <-
  list(mod.0,
       mod.1, 
       mod.2, 
       mod.3, 
       mod.4, 
       mod.5, 
       mod.6, 
       mod.7, 
       mod.8)

modnames <-
  c("mod.0",
    "mod.1",
    "mod.2",
    "mod.3",
    "mod.4",
    "mod.5",
    "mod.6",
    "mod.7",
    "mod.8")

aictab(mods, modnames, second.ord = T)

summary(mod.8)

#Coefficient plot for model
coefplot2(mod.8,
          main = "Model 8", 
          col = 'blue', 
          cex.pts = 1.3,
          intercept = FALSE)

#List coefficients
rownames(summary(mod.8)$coefficients)

#Odds ratios and 95% CI
ORs<- exp(cbind(OR = coef(mod.8), confint(mod.8)))[-1,] # Intercept
ORs

#Summary
sessionInfo()

# MEANS
MeansByTimePeriod <- function(x){
  xChalcolithic<-mean(x[1:24])
  xNeolithic<-mean(x[13:24])
  xBronzeAge<-mean(x[13:24])
  xTimePeriodMeans<-cbind(xChalcolithic, xNeolithic, xBronzeAge)
  print(xTimePeriodMeans)
}

# Example
MeansByTimePeriod(MSKUDATA$Journal.Articles.Accessed)

MeansByArchaeologicalSite <- function(x){
  OvcularTepsei<-mean(x[1:12])
  MenteshTepe<-mean(x[13:24])
  Nakhchivan<-mean(x[13:24])
  ArchaeologicalSiteMeans<-cbind(xOvcular, xMenteshTepe, xNakhchivan)
  print(xArchaeologicalSiteMeans)
}

# Example
MeansByYear(MSKUDATA$Journal.Articles.Accessed)

MeansByArchaeologicalEvidence <- function(x){
  xMammalian<-mean(x[1:12])
  xPottery<-mean(x[13:24])
  xArchitecturalEvidenceMeans<-cbind(xMammalian, xPottery, xArchitecturalRemains)
  print(xArchaeologicalEvidenceMeans)
}

# Example
MeansByYear(MSKUDATA$Journal.Articles.Accessed)
