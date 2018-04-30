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
   \item{map_elev }{Creates map elevations}
   \item{map_precip }{Creates map precipitation}
   \item{grid.arrange }{For grid arrangement}
   \item{dat1 }{Standardizes predictors}
   \item{str }{Verifys to make sure the vars are numerical}
   \item{numAbsences }{10x presences}
   \item{Presences }{Notes presences}
   \item{Absences }{Notes absences}
   \item{dat2 }{Displays the final data on which analyses will be run}
   \item{dat3 }{Presents data table for forward selection (stepAIC)}
   \item{head }{Views and checks data }
   \item{form 0-10 }{For modelling to define formulae}
   \item{mod.0-8 }{Used to build models}
   \item{mods }{Summarizes AIC results, including weightings. Using modaicavg package}
   \item{aictab }{Summarizes mods, modnames, and second.ord}
   \item{coefplot2 }{Plots the coefficient for a model}
   \item{rownames }{Lists coefficients}
}
\references{
Burke, A. (n.d.). Using R to analyse occupation as a function of geographical variables using logistic regression. Retrieved from https://benmarwick.github.io/How-To-Do-Archaeological-Science-Using-R/using-r-to-analyse-occupation-as-a-function-of-geographical-variables-using-logistic-regression-.html
}
\author{
Elizabeth Siniscalchi
}
\note{
These functions are intended to be generic so that they may be used by anyone rather than with a specific set of archaeological data.
