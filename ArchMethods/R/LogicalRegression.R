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

# Build models
mod.0  <-  glm(form0, family = binomial, data = dat2)
mod.1  <-  glm(form1, family = binomial, data = dat2)
mod.2  <-  glm(form2, family = binomial, data = dat2)
mod.3  <-  glm(form3, family = binomial, data = dat2)
mod.4  <-  glm(form4, family = binomial, data = dat2)
mod.5  <-  glm(form5, family = binomial, data = dat2)
mod.6  <-  glm(form6, family = binomial, data = dat2)
mod.7  <-  glm(form7, family = binomial, data = dat2)
mod.8 <-   stepAIC(glm(form8, family = binomial, data = dat3))

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

# Coefficient plot for model
coefplot2(mod.8,
          main = "Model 8", 
          col = 'blue', 
          cex.pts = 1.3,
          intercept = FALSE)

# List coefficients
rownames(summary(mod.8)$coefficients)

# Odds ratios and 95% CI
ORs<- exp(cbind(OR = coef(mod.8), confint(mod.8)))[-1,] # Intercept
ORs

# Summary
sessionInfo()