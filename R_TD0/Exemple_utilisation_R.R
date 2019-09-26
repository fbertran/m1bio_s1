


install.packages("HSAUR")
data(roomwidth,pacjage="HSAUR")
data(roomwidth,package="HSAUR")
roomwidth
head(roomwidth)
#install.packages("HSAUR")
#A n'exécuter qu'une seule fois pour
#télécharger le package sur l'ordinateur
data(roomwidth,package="HSAUR")
#Affiche un aperçu du jeu de données
head(roomwidth)
head(roomwidth,n=10)
tail(roomwidth)
tail(roomwidth,n=3)
str(roomwidth)
roomwidth$unit
levels(roomwidth$unit)
boxplot(width~unit,data=roomwidth)
1==2
1==1
roomwidth$unit
roomwidth$unit=="feet"
ifelse(roomwidth$unit=="feet",1,3.28)
convert <- ifelse(roomwidth$unit==
"feet",1,3.28)
roomwidth$width*convert
roomwidth$width
roomwidth$width*convert
View(roomwidth)
mean(roomwidth$width*convert)
tapply(roomwidth$width*convert,
roomwidth$unit, summary)
boxplot(width*convert~unit,data=roomwidth)
boxplot(I(width*convert)~unit,data=roomwidth)
boxplot(width*convert~unit,data=roomwidth)
tapply(roomwidth$width*convert,
roomwidth$unit, boxplot)
tapply(roomwidth$width*convert,
roomwidth$unit, summary)
roomwidth$unit
roomwidth$width*convert
tapply(roomwidth$width*convert,
roomwidth$unit, summary)
tapply(roomwidth$width*convert,
roomwidth$unit, sd)
tapply(roomwidth$width*convert,
roomwidth$unit, mad)
boxplot(width~unit,data=roomwidth)
boxplot(width*convert~unit,data=roomwidth)
test=rnorm(100)
qqnorm(test)
qqline(test)
test=rnorm(100)
qqnorm(test)
qqline(test)
boxplot(width*convert~unit,data=roomwidth)
layout(matrix(c(1,2,1,3),
nrow=2,ncol=2,
byrow=F))
boxplot(width*convert~unit,data=roomwidth)
boxplot(width*convert~unit,data=roomwidth)
boxplot(width*convert~unit,data=roomwidth)
boxplot(I(width*convert) ~ unit, data=roomwidth,
ylab="Estimated width(feet)", varwidth=T,
names=c("Estimates in feet","Estimates in metres (converted to
feet)"))
boxplot(I(width*convert) ~ unit, data=roomwidth,
ylab="Estimated width(feet)", varwidth=T,
names=c("Estimates in feet","Estimates in metres (converted to feet)"))
layout(matrix(c(1,2,1,3),
nrow=2,ncol=2,
byrow=F))
boxplot(I(width*convert) ~ unit, data=roomwidth,
ylab="Estimated width(feet)", varwidth=T,
names=c("Estimates in feet","Estimates in metres (converted to feet)"))
feet <- roomwidth$unit=="feet"
feet
roomwidth$width[feet]
qqnorm(roomwidth$width[feet],
ylab="Estimated width(feet)")
qqline(roomwidth$width[feet])
qqnorm(roomwidth$width[!feet],
ylab="Estimated width(metres)")
qqline(roomwidth$width[!feet])
shapiro.test(roomwidth$width[feet])
shapiro.test(roomwidth$width[!feet])
wilcox.test(I(width*convert) ~ unit, data=roomwidth, conf.int=T)
library(Rcmdr)
install.packages("RcmdrPlugin.coin")
install.packages("RcmdrPlugin.DoE")
library(Rcmdr)
View(Calcium)
Calcium
install.packages("RcmdrPlugin.coin")
?Rcmdr
detach(package='package:Rcmdr')
?detach
detach('package:Rcmdr')
library(Rcmdr)
detach("package:RcmdrPlugin.coin", unload=TRUE)
detach("package:Rcmdr", unload=TRUE)
library("Rcmdr", lib.loc="\\\\vfiler-ad-pers.ad.unistra.fr/fbertran/Documents/R/win-library/3.3")
?oneway_test
read.csv("http://irma.math.unistra.fr/~fbertran/enseignement/Master1_2016_2/DonneesExempleCours3.csv")




install.packages('BioStatR')
library(BioStatR)
data('Mesures')
str('Mesures')
str(Mesures)
lauriers<-subset(Mesures,subset=(Mesures$espece=="laurier rose"))
lauriers
write.csv(lauriers,'lauriers.csv')
bignones<-subset(Mesures5,subset=(Mesures5$espece=="bignone"))[,c(1,4)]
write.csv(bignones,'bignones.csv')
