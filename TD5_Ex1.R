#Exercice 1
setwd("myDir")
Cyclamen<-read.csv("TD5_Ex1.CSV",colClasses=c("factor","numeric","factor"))

library(lattice)
xyplot(Vitesse~Milieu|Plante,data=Cyclamen,pch=19)

replications(Vitesse~Milieu + Plante%in%Milieu, data=Cyclamen)
Modele1 <- aov(Vitesse~Plante%in%Milieu,data=Cyclamen)
shapiro.test(residuals(Modele1))
bartlett.test(residuals(Modele1),I((Cyclamen$Plante):(Cyclamen$Milieu)))
summary(Modele1)

xyplot(residuals(Modele1)~Milieu|Plante,data=Cyclamen,pch=19)
