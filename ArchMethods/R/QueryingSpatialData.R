# QUERYING SPATIAL DATA 

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
