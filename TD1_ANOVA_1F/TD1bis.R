
Calcium <- readXL("U:/TDExo1.xlsx", rownames=FALSE, header=TRUE, na="", 
  sheet="Calcium", stringsAsFactors=TRUE)
Calcium <- readXL("U:/TDExo1.xlsx", rownames=FALSE, header=TRUE, na="", 
  sheet="Calcium", stringsAsFactors=TRUE)
summary(Calcium)
Calcium <- within(Calcium, {
  Lot <- factor(Lot, labels=c('Lot1','Lot2','Lot3','Lot4','Lot5'))
})
library(mvtnorm, pos=15)
library(survival, pos=15)
library(MASS, pos=15)
library(TH.data, pos=15)
library(multcomp, pos=15)
library(abind, pos=20)
AnovaModel.1 <- aov(Taux ~ Lot, data=Calcium)
summary(AnovaModel.1)
with(Calcium, numSummary(Taux, groups=Lot, statistics=c("mean", "sd")))
Calcium<- within(Calcium, {
  fitted.AnovaModel.1 <- fitted(AnovaModel.1)
  residuals.AnovaModel.1 <- residuals(AnovaModel.1)
  hatvalues.AnovaModel.1 <- hatvalues(AnovaModel.1) 
})
library(nortest, pos=21)
with(Calcium, shapiro.test(residuals.AnovaModel.1))
with(Calcium, tapply(Taux, Lot, median, na.rm=TRUE))
kruskal.test(Taux ~ Lot, data=Calcium)
Calcium <- within(Calcium, {
  fitted.AnovaModel.1 <- NULL
  hatvalues.AnovaModel.1 <- NULL
  residuals.AnovaModel.1 <- NULL 
})

