\name{LogicalRegression.R}
\alias{LogicalRegression.R}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Geographic variables using logical regression
}
\description{
Using R to analyse occupation as a function of geographical variables using logistic regression.
}
\usage{
LogicalRegression.R(x)
}
\value{
   \item{map_elev }{map elevation}
   \item{map_precip }{map precipitation}
   \item{grid.arrange }{grid arrangement}
   \item{dat1 }{Standardization of predictors}
   \item{str }{Verification to make sure the vars are numerical}
   \item{numAbsences }{10x presences}
   \item{Presences }{presences}
   \item{Absences }{absences}
   \item{dat2 }{Final data on which analyses will be run}
   \item{dat3 }{Data table for forward selection (stepAIC)}
   \item{head }{View/check data }
   \item{form 0-10 }{Modelling to define formulae}
   \item{mod.0-8 }{Build models}
   \item{mods }{Summarize AIC results, including weightings. Using modaicavg package}
   \item{aictab }{summary of mods, modnames, and second.ord}
   \item{coefplot2 }{Coefficient plot for model}
   \item{rownames }{Lists coefficients}
}
\references{
Burke, A. (n.d.). Retrieved from https://benmarwick.github.io/How-To-Do-Archaeological-Science-Using-R/using-r-to-analyse-occupation-as-a-function-of-geographical-variables-using-logistic-regression-.html
}
\author{
Elizabeth Siniscalchi
}
\note{
These functions are intended to be generic so that they may be used by anyone rather than with a specific set of archaeological data.
