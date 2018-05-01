# OCCUPATION AS A FUNCTION OF GEOGRAPHIC VARIALES USING LOGICAL REGRESSION

#' File Name Function
#'
#' This function allows you to set the file name.
#' @keywords fileName
#' @export
#' @examples
#' fileName()
fileName <- "File.csv" # Set file name

#' Data Reading Function
#'
#' This function allows you to read the data in R.
#' @keywords dat
#' @export
#' @examples
#' dat()
dat <- read.csv(fileName, header=T) # Read in data
head(dat) # View/check data

library(ggplot2)
library(viridis)

#' Map Elevation Function
#'
#' This function allows you to determine map elevation.
#' @keywords map_elev, aes, geom_point, scale_color_viridis, theme_minimal, coord_equal, ggtitle
#' @export
#' @examples
#' map_elev()
map_elev <- 
  ggplot(dat, 
         aes(X, 
             Y,
             colour = elev)) +
  geom_point(size = "Number",
             shape = "Number") +
  scale_color_viridis() +
  theme_minimal() + 
  coord_equal() +
  ggtitle("Study area with elevation")

#' Creates map precipitation Function
#'
#' This function allows you to create precipitation on maps.
#' @keywords map_precip, ggplot, geom_point, scale_color_viridis, theme_minimal, coord_equal, ggtitle
#' @export
#' @examples
#' map_precip()
map_precip  <- 
  ggplot(dat, 
         aes(X, 
             Y,
             colour = p_min_spr)) +
  geom_point(size = "Number",
             shape = "Number") +
  scale_color_viridis(option = "C") +
  theme_minimal() + 
  coord_equal() +
  ggtitle("Desired Title for Chart")

library(gridExtra)

#' Grid Arrangement Function
#'
#' This function allows you to arrange grids on maps.
#' @keywords grid, arrange
#' @exports
#' @examples
#' grid.arrange()
grid.arrange(map_elev, map_precip)

#' Standardize Predictors Function
#'
#' This function allows you to standardize predictors.
#' @keywords dat1
#' @export
#' @examples
#' dat1()
dat1 <- as.data.frame(cbind(dat[,c(1:4)], (scale(dat[,-c(1:4)]))))

#' Numerical Vars Function
#'
#' This function allows you to make sure the vars are numerical.
#' @keywords str
#' @export
#' @examples
#' str()
str(dat1)

#' Absence of Numbers Function
#'
#' This function allows you to determine the absence of numbers, in addition to teasing apart presences and absences, then selecting a subset of absences and recombine presences (all) and absences (sample).
#' @keywords absences, numbers
#' @export
#' @examples
#' numAbsences()
# Determine absences
numAbsences <- 350

#' Presence Function
#'
#' This function allows you to note the amount of presences in a function.
#' @keywords presence
#' @export
#' @examples
#' Presence()
Presences <- subset(dat1, dat1$LGM == 1)

#' Absences Function
#'
#' This function allows you to note the amount of absences in a function.
#' @keywords absences
#' @export
#' @examples
#' Presence()
Absences <- subset(dat1, dat1$LGM == 0)[sample(c(1:dim(dat1)[1]), numAbsences),]

#' Finalize Data Function
#'
#' This function allows you to finalize the data on which analyses will be run.
#' @keywords dat2
#' @export
#' @examples
#' dat2()
dat2 <- rbind(Presences, Absences)

#' Data Table for Foward Selection Function
#'
#' This function allows you to create a data table for forward selection (stepAIC).
#' @keywords dat3
#' @export
#' @examples
#' dat3()
dat3 <- dat2[,c(2, 5, 6, 7, 8, 9, 10)] # Random sample set of numbers that should be altered as desired

#' View and Check Data Function
#'
#' This function allows you to view and check data.
#' @keywords head, dat3
#' @export
#' @examples
#' head()
# View/check data
head(dat3)

#' Form 0-8 Functions
#'
#' These functions allow you to model so as to define a formulae.
#' @keywords form, y, x, elev, slope
#' @export
#' @examples
#' form0()
#' form1()
#' form2()
#' form3()
#' form4()
#' form5()
#' form6()
#' form7()
#' form8()
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

#' Build Model Functions
#'
#' These functions allow you to to build models.
#' @keywords mod, dat2
#' @export
#' @examples
#' mod.0()
#' mod.1()
#' mod.2()
#' mod.3()
#' mod.4()
#' mod.5()
#' mod.6()
#' mod.7()
#' mod.8()
# Build models
mod.0  <-  glm(form0, family = "define", data = dat2)
mod.1  <-  glm(form1, family = "define", data = dat2)
mod.2  <-  glm(form2, family = "define", data = dat2)
mod.3  <-  glm(form3, family = "define", data = dat2)
mod.4  <-  glm(form4, family = "define", data = dat2)
mod.5  <-  glm(form5, family = "define", data = dat2)
mod.6  <-  glm(form6, family = "define", data = dat2)
mod.7  <-  glm(form7, family = "define", data = dat2)
mod.8 <-   stepAIC(glm(form8, family = "define", data = dat3))

#' Summarize AIC Results Function
#'
#' This function allows you to summarize AIC results, including weightings by using modaicavg package.
#' @keywords AIC, weighting, modaicavg
#' @export
#' @examples
#' mods()
# Summarize AIC results, including weightings. Using modaicavg package
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

#' List the Names AIC Results Function
#'
#' This function allows you to list the names of AIC results.
#' @keywords AIC
#' @export
#' @examples
#' modnames()
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

#'  Summarize Mods, Modnames, and Secord.ord Function
#'
#' This function allows you to summarizes mods, modnames, and second.ord.
#' @keywords mods, modnames, second.ord
#' @export
#' @examples
#' aictab()
aictab(mods, modnames, second.ord = T)

#' Summary Function
#'
#' This function allows you to summarize results.
#' @keywords cats
#' @export
#' @examples
#' summary()
summary(mod.8)

#' Coefficient Plot for Model Function
#'
#' This function allows you to plot the coefficient for a model.
#' @keywords coefplot2
#' @export
#' @examples
#' cat_function()
coefplot2(mod.8,
          main = "Model 8", 
          col = 'blue', 
          cex.pts = 1.3,
          intercept = FALSE)

#' List Coefficients Function
#'
#' This function allows you to list the coefficients.
#' @keywords row, names
#' @export
#' @examples
#' rownames()
rownames(summary(mod.8)$coefficients)
