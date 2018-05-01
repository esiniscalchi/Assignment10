# QUERYING SPATIAL DATA 

#'  Coerce Main Sites into 'ppp' Object for Spatial Statistics Function
#'
#' This function allows you to do visualisations of raw patterns by coercing the names of main sites into 'ppp' object for spatial statistics.
#' @keywords Main, ppp objects, spatial statistics
#' @export
#' @examples
#' main.pp()
main.pp <- c(as.ppp(main.sites))

#' Coerce Secondy Sits into 'ppp' object for spatial statistics Function
#'
#' This function allows you to do visualisations of raw patterns by coercing the names of secondary sites into 'ppp' object for spatial statistics.
#' @keywords secondary sites, ppp objects, spatial statistics
#' @export
#' @examples
#' secondary.pp()
secondary.pp <- c(as.ppp(secondary.sites))

#' Site Visualisation Function
#'
#' This function allows you to do visualisations of sites.
#' @keywords sites, visualisations
#' @export
#' @examples
#' sites.pp()
sites.pp <- c(superimpose(main.pp, secondary.pp))

#' Measure the Intensity of Different Patterns Function
#'
#' This function allows you to measure the intensity of different patterns of sites.
#' @keywords intensity, patterns, sites
#' @export
#' @examples
#' intensity()
intensity <- c(sites.pp)

#' Remove Marks from Point Pattern Function
#'
#' This function allows you to removes "marks" (i.e. descriptors) from point pattern.
#' @keywords unmark, point pattern, sites
#' @export
#' @examples
#' allsites()
# Compute the intensity
allsites <- c(unmark(sites.pp))

#' Intensity in Unit of Area Points Function
#'
#' This function allows you to computes the intensity by noting the points in each unit of an area.
#' @keywords cats
#' @export
#' @examples
#' intensity()
intensity <- c(allsites)

#' Plot Interpolatd Values Function
#'
#' This function allows you to plot interpolated values for additional visualisations and stats.
#' @keywords plot, sites, values, stats, visualisations
#' @export
#' @examples
#' plot()
plot <- c(d.sites, main = "Density of all sites")

#' Two Sites Function
#'
#' This function allows you to analyze two different types of sites and set number of plotting rows to 1 and number of columns to 2.
#' @keywords differnt, sites, plotting, rows, columns
#' @export
#' @examples
#' par()
par <- c((mfrow=c(1,2)))

#' Plot Density of Primary Sites Function
#'
#' This function allows you to determine the density of primary settlements.
#' @keywords density, plot, primary, sites
#' @export
#' @examples
#' plot.density()
plot.density <-c((density(main.pp), main = "Density of primary settlements"))

#' Spatial Relationships Function
#'
#' This function allows you to identify significant spatial relationships.
#' @keywords spatial, relationships
#' @export
#' @examples
#' clarkevans.test()
clarkevans.test <- c((secondary.pp, correction = c("FileName"), nsim = 999))

#' Compare Empirical Patterns Function
#'
#' This function allows you to compare data against the empirical pattern.
#' @keywords compare, patterns, empirical
#' @export
#' @examples
#' bivar()
bivar <- envelope(
  fun = pcfcross, 
  sites.pp, 
  divisor = "d", 
  nsim = 99, 
  correction = c("FileName")
) 
plot(bivar, main = "Pair-correlation function, with simulation envelope")

#' Point Process Modelling Function
#'
#' This function allows you to point process modelling.
#' @keywords process, point, modelling
#' @export
#' @examples
#' pwin()
pwin <- as.owin(c(-0.1, 1.1, -0.1, 1.1))

#' Assign Windows Function
#'
#' This function allows you to assign windows.
#' @keywords windows, assign
#' @export
#' @examples
#' main.pp#window()
main.pp$window <- c(pwin)

#' Kernel Density Function
#'
#' This function allows you to determine the kernel density estimate of primary settlement sites, to act as covariate.
#' @keywords kernel, desnity, primary, settlement, covariate
#' @export
#' @examples
#' pden()
pden <- c(density(main.pp))

#' Point Process Model with Covariate Function
#'
#' This function allows you to fit the point process model with the covariate.
#' @keywords process, point, model, covariate
#' @export
#' @examples
#' ()
fit.sec <- c(ppm(unmark(secondary.pp), ~ Cov1, covariates = list(Cov1 = pden)))

#'  Function
#'
#' This function allows you to examine the point process modelling.
#' @keywords point, process, modelling, examine
#' @export
#' @examples
#' ()
fit.res <- c(envelope(
  fun = Kres, 
  secondary.pp, 
  model = fit.sec, 
  nsim = 19, 
  correction = c("Ripley")))
