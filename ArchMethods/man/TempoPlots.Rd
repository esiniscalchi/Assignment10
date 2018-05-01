\name{TempoPlots}
\alias{TempoPlots}
\title{
Tempo Plots in R for Analysing Radiocarbon Dates
}
\description{
The tempo plot can measure change over time by estimating the cumulative occurrence of archaeological events in a Bayesian calibration. It yields a graphic where the slope of the plot directly reflects the pace of change.
}
\usage{
TempoPlots(x)
}
\value{
  \item{MCMC_sample }{Yields the MCMC output}
  \item{mcmc }{Reads the MCMC output}
  \item{names }{lists names for mcmc output}
  \item{colnames }{creates a column of names for mcmc output}
  \item{source }{Loads and runs calc.tempo function}
  \item{calc.tempo }{Used to calculate the tempo plot}
  \item{means }{Means of plots}
  \item{plot.tempo }{Example plot with plot.tempo}

}
\references{
Dye, T.S. (n.d.). Tempo Plots in R for Analysing Radiocarbon Dates. Retrieved from https://benmarwick.github.io/How-To-Do-Archaeological-Science-Using-R/tempo-plots-in-r-for-analysing-radiocarbon-dates.html
}
\author{
Elizabeth Siniscalchi
}
\note{
These functions are intended to be generic so that they may be used by anyone rather than with a specific set of archaeological data.
}

\keyword{ Tempo }
\keyword{ Plots }
