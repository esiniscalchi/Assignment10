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
