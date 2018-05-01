# TEMPO PLOTS IN R FOR ANALYZING RADIOCARBON DATES AND PHYSICAL MEASUREMENTS

#' Yield MCMC Output Function
#'
#' This function allows you to yield the MCMC output.
#' @keywords MCMC, output, yield
#' @export
#' @examples
#' MCMC_sample()
MCMC_sample <- c("fileName", 25, 100000) # This data is arbitrary and should be used with the parameters of the desired data

#' Read MCMC Output Function
#'
#' This function allows you to read the MCMC output by converting colnames to read.csv style.
#' @keywords MCMC, read, output
#' @export
#' @examples
#' mcmc()
# Read the MCMC output
mcmc <- c(readr::read_csv("loi-mcmc.csv")
          
#' List Names for Mcmc Output Function
#'
#' This function allows you to list names for mcmc output.
#' @keywords MCMC, output, list, names
#' @export
#' @examples
#' names()
names <- c(mcmc(make.names(names(mcmc)))

#' Column of Names for Mcmc Output Function
#'
#' This function allows you to create a column of names for mcmc output.
#' @keywords
#' @export
#' @examples
#' colnames()
colnames <- c(mcmc)

#' Tempo Plot Function
#'
#' This function allows you to calculate the tempo plot.
#' @keywords tempo, plot, calculate
#' @export
#' @examples
#' calc.tempo()
calc.tempo <- function(mcmc.data, by.int, out.file="") {
  years <- seq(from = floor(min(mcmc.data)), to = ceiling(max(mcmc.data)), by = by.int)}
           
#' Plot Means Function
#'
#' This function allows you to determine the means of plots.
#' @keywords
#' @export
#' @examples
#' means()
  means <- colMeans(res.mat)

#' Plot with plot.tempo Function
#'
#' This function allows you to plot with the plot.tempo function.
#' @keywords
#' @export
#' @examples
#' plot.tempo()
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
