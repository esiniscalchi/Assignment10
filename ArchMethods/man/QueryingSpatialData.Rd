\name{QueryingSpatialData}
\alias{QueryingSpatialData}
\title{
Creates visualisataions
}
\description{
For visualisation of raw patterns and classic exploratory tools, these functions coerce our data into a ‘ppp’ (planar point pattern) object for spatial statistics using the spatstat library, and then compute the intensity of the data.
}
\usage{
QueryingSpatialData(x)
}
\value{
  \item{main.pp }{Visualisation of raw patterns by Coerce into 'ppp' object for spatial statistics}
  \item{secondary.pp }{Visualisation of raw patterns by Coerce into 'ppp' object for spatial statistics}
  \item{sites.pp }{visualisation of sites}
  \item{intensity }{Measure intensity of different patterns}
  \item{allsites }{Computes the intensity removes marks or descriptors from point pattern}
  \item{intensity }{Computes the intensity by noting the points in each unit of area}
  \item{plot }{Plot interpolated values}
  \item{par }{Set number of plotting rows to 1 and number of columns to 2 for two different types of sites}
  \item{clarkevans.test }{Identifies significant spatial relationships}
  \item{bivar }{Compares data against the empirical pattern}
  \item{pwin }{For point process modelling}
  \item{main.pp$window }{Assign windows}
  \item{pden }{Kernel density estimate of primary settlement sites, to act as covariate}
  \item{fit.sec }{Fit point process model with the covariate}
  \item{points }{estimates a model for data}
  \item{fit.res }{used for point process modelling}
}
\references{
Riris, P. (n.d.). Basic spatial analysis in R: Point pattern analysis. Retrieved from https://benmarwick.github.io/How-To-Do-Archaeological-Science-Using-R/basic-spatial-analysis-in-r-point-pattern-analysis.html
}
\author{
Elizabeth Siniscalchi
}
\note{
These functions are intended to be generic so that they may be used with any archaeological data rather than with just one specific set of archaeological data.
}

\keyword{ visualisataions }
\keyword{ Spatial }
