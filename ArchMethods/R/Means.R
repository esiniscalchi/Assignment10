# MEANS
MeansByTimePeriod <- function(x){
  xChalcolithic<-mean(x[1:24])
  xNeolithic<-mean(x[13:24])
  xBronzeAge<-mean(x[13:24])
  xTimePeriodMeans<-cbind(xChalcolithic, xNeolithic, xBronzeAge)
  print(xTimePeriodMeans)
}

MeansByArchaeologicalSite <- function(x){
  OvcularTepsei<-mean(x[1:12])
  MenteshTepe<-mean(x[13:24])
  Nakhchivan<-mean(x[13:24])
  ArchaeologicalSiteMeans<-cbind(xOvcular, xMenteshTepe, xNakhchivan)
  print(xArchaeologicalSiteMeans)
}

MeansByArchaeologicalEvidence <- function(x){
  xMammalian<-mean(x[1:12])
  xPottery<-mean(x[13:24])
  xArchitecturalEvidenceMeans<-cbind(xMammalian, xPottery, xArchitecturalRemains)
  print(xArchaeologicalEvidenceMeans)
}