foret<-rep(1:3,c(6,7,5))
foret
str(foret)
hauteur<-c(23.4,24.4,24.6,24.9,25.0,26.2,
            18.9,21.1,21.1,22.1,22.5,23.5,
            24.5,22.5,22.9,
            23.7,24.0,24.0)

hauteur

plot(foret,hauteur)

foret<-factor(foret)
str(foret)
plot(foret,hauteur)

arbre<-data.frame(foret,hauteur)
arbre

rm(foret)
rm(hauteur)

arbre
str(arbre)

moy<-tapply(arbre$hauteur,arbre$foret,mean)

moy<-with(arbre,tapply(hauteur,foret,mean))
moy
moy.g<-mean(arbre$hauteur)
moy.g
mean(moy)

ecart<-tapply(arbre$hauteur,arbre$foret,sd)
ecart
ecart.g<-sd(arbre$hauteur)
ecart.g

plot(arbre$foret,arbre$hauteur)
points(1:3,moy,pch="@")
abline(h=moy.g,col="red")


modele1<-aov(hauteur~foret,data=arbre)
?aov
help("aov")

modele1
residus<-residuals(modele1)
residus

#pas de test de normalite possible
#effectif trop faible
#Tests de permutation
install.packages('pgirmess')
library(pgirmess)
#help(package='pgirmess')
PermTest(modele1)

#Intervalle de confiance autour de la p-valeur
#En regle generale, on compare la borne
#superieure de l'IC à 99%
binom.test(5,1000,
           conf.level = .99)
#superieure de l'IC à 99,9%
binom.test(5,1000,
           conf.level = .999)

PermTest(modele1, B=10000)
binom.test(43,10000,
           conf.level = .99)

layout(t(1:2))
plot(arbre$foret,arbre$hauteur)
points(1:3,moy,pch="x")
abline(h=moy.g,col="red")

nouveauforet=sample(arbre$foret)
plot(nouveauforet,arbre$hauteur)
nouveaumoy<-with(arbre,tapply(hauteur,nouveauforet,mean))
points(1:3,nouveaumoy,pch="x")
abline(h=moy.g,col="red")

#Taille de l'effet
#ANOVA
#eta^2 = SC_F/SC_T=SC_F/(SC_F+SC_R)
25.31/(25.31+26.00)
#[1] 0.4932762


library(car) #package
leveneTest(Aam ~ Location, data = Data) 
#Levene's Test for Homogeneity of Variance (center = median)

### Welch's anova for unequal variances

oneway.test(Aam ~ Location, data=Data,
var.equal=FALSE)

#One-way analysis of means 
#(not assuming equal variances)





shapiro.test(residus)
bartlett.test(residus~foret,data=arbre)
summary(modele1)





sachets = read.csv(file = "Cours3.csv", sep=";", dec=",")
str(sachets)
sachets$Semaines <- factor(sachets$Semaines)
str(sachets)
modele_sachet=aov(Masses~Semaines*Especes,
                  data=sachets)
modele_sachet=aov(Masses~Semaines+Especes+Semaines:Especes,
                  data=sachets)
library(pgirmess)
PermTest(modele_sachet)
PermTest(modele_sachet, B=10000)
#Based on 10000 replicates
#Simulated p-value:
#  p.value
#Semaines          0.0000
#Especes           0.0172
#Semaines:Especes  0.4424
binom.test(0,10000,conf.level=.99)
binom.test(172,10000,conf.level=.99)
binom.test(4424,10000,conf.level=.99)

#eta^2 semaines
1741/(1741+58+30+57)
#eta^2 especes
58/(1741+58+30+57)
#eta^2 interaction
30/(1741+58+30+57)
