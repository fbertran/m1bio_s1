#Exercice 1
setwd("myDir")
Cyclamen<-read.csv("TD5_Ex1.CSV",colClasses=c("factor","numeric","factor"))
replications(Vitesse~Plante%in%Milieu, data=Cyclamen)
Modele1 <- aov(Vitesse~Plante%in%Milieu,data=Cyclamen)
shapiro.test(residuals(Modele1))
bartlett.test(residuals(Modele1),I((Cyclamen$Plante):(Cyclamen$Milieu)))
summary(Modele1)
