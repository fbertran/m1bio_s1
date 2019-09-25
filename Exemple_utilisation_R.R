ls()
ls
install.packages(xlsx)
install.packages("xlsx")
Chemin <- "U:\\"
paste(Chemin,"europe.csv",sep="")
europe <- read.table(paste(Chemin,"europe.csv",sep=""),dec=".",
+ sep=";",quote="n"",header=T)
truc = "sdfsfsfs
gggg"
europe <- read.table(paste(Chemin,"europe.csv",sep=""),dec=".",
sep=";",quote="n",header=T)
View(europe)
europe <- read.table(paste(Chemin,"europe.csv",sep=""),
dec=".", sep=";",quote="\"",header=TRUE)
View(europe)
head(europe)
str(europe)
summary(europe)
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
exemple=read.csv("http://irma.math.unistra.fr/~fbertran/enseignement/Master1_2016_2/DonneesExempleCours3.csv")
Exemple=read.csv("http://irma.math.unistra.fr/~fbertran/enseignement/Master1_2016_2/DonneesExempleCours3.csv")
Exemple=read.csv("http://irma.math.unistra.fr/~fbertran/enseignement/Master1_2016_2/DonneesExempleCours3.csv")
head(Exemple)
tail(Exemple)
str(Exemple)
Exemple$Fire
log(Exemple$Fire) #commentaire
Exemple$lnFire <- log(Exemple$Fire) # Nouvelle colonne lnFire
# dans Exemple qui contient les logarithmes
# de la colonne Fire
head(Exemple)
str(Exemple)
View(exemple)
rm(exemple)
lm(lnFire ~ X_1+X_2+X_3,data=Exemple)
summary(lm(lnFire ~ X_1+X_2+X_3,data=Exemple))
summary(lm(lnFire ~ X_2+X_3,data=Exemple))
summary(lm(lnFire ~ X_1,data=Exemple))
summary(lm(lnFire ~ X_2,data=Exemple))
summary(lm(lnFire ~ X_3,data=Exemple))
summary(lm(lnFire ~ X_1+X_2,data=Exemple))
summary(lm(lnFire ~ X_1+X_3,data=Exemple))
cor(Exemple)
summary(lm(lnFire ~ X_1+X_2+X_3,data=Exemple))
summary(lm(lnFire ~ X_1+X_2+X_3,data=Exemple))
step(lm(lnFire ~ X_1+X_2+X_3,data=Exemple))
?step
step(lm(lnFire ~ X_1+X_2+X_3,data=Exemple),direction = "forward")
step(lm(lnFire ~ X_1+X_2+X_3,data=Exemple))
step(lm(lnFire ~ X_1+X_2+X_3,data=Exemple))
step(lm(lnFire ~ X_1+X_2+X_3,data=Exemple),
direction = "forward")
step(lm(lnFire ~ 1,data=Exemple),
direction = "forward")
add1(lm(lnFire ~ 1,data=Exemple),
direction = "forward")
add1(lm(lnFire ~ 1,scope~X_1+X_2+X_3,data=Exemple),
direction = "forward")
add1(lm(lnFire ~ 1,scope=~X_1+X_2+X_3,data=Exemple),
direction = "forward")
add1(lm(lnFire ~ X_1+X_2+X_3,scope=~X_1+X_2+X_3,data=Exemple),
direction = "forward")
add1(lm(lnFire ~ X_1+X_2+X_3,scope=~1,data=Exemple),
direction = "forward")
add1(lm(lnFire ~ X_1+X_2+X_3,scope=lnFire~1,data=Exemple),
direction = "forward")
add1(lm(lnFire ~ X_1+X_2+X_3,
scope=lnFire~X_1+X_2+X_3,data=Exemple),
direction = "forward")
add1(lm(lnFire ~ X_1+X_2+X_3,scope=lnFire~1,data=Exemple),
add1(lm(lnFire ~ X_1+X_2+X_3,
,data=Exemple),scope=lnFire~X_1+X_2+X_3,
direction = "forward")
add1(lm(lnFire ~ 1,
,data=Exemple),scope=lnFire~X_1+X_2+X_3,
direction = "forward")
step(lm(lnFire ~ 1,data=Exemple)
,scope=lnFire~X_1+X_2+X_3,
direction = "forward")
step(lm(lnFire ~ 1,data=Exemple)
,scope=lnFire~X_1+X_2+X_3)
step(lm(lnFire ~ X_1+X_2+X_3,data=Exemple))
read.csv("http://irma.math.unistra.fr/~fbertran/enseignement/Master1_2016_2/Master2TD3_Ex1.CSV")
read.csv("http://irma.math.unistra.fr/~fbertran/enseignement/Master1_2016_2/Master2TD3_Ex1.CSV")
ex1<-read.csv("http://irma.math.unistra.fr/~fbertran/enseignement/Master1_2016_2/Master2TD3_Ex1.CSV")
ex1<-read.csv("http://irma.math.unistra.fr/~fbertran/enseignement/Master1_2016_2/Master2TD3_Ex1.CSV")
head(ex1)
step(lm(FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4,data=ex1))
step(lm(FUEL.x_i5~1,data=ex1),scope=FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4)
shapiro.test(residuals(lm(FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4,data=ex1)))
shapiro.test(residuals(lm(FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13,data=ex1)))
ex1$lnF<-log(ex1$FUEL.x_i5)
head(ex1)
step(lm(lnF~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4,data=ex1))
step(lm(lnF~1,data=ex1),scope=lnF~
TAX.x_i1+DLIC.x_i2+INC.x_i13+ROAD.x_i4)
shapiro.test(residuals(lm(lnF~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4,data=ex1)))
shapiro.test(residuals(lm(lnF~TAX.x_i1+DLIC.x_i2+INC.x_i13,data=ex1)))
shapiro.test(residuals(lm(FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4,data=ex1)))
step(lm(FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4,data=ex1))
shapiro.test(residuals(lm(FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4,data=ex1)))
boxplot(residuals(lm(FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4,data=ex1)))
qqnorm(residuals(lm(FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4,data=ex1)))
qqline(residuals(lm(FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4,data=ex1)))
lm(FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4,data=ex1))
lm(FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4,data=ex1)
residuals(lm(FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4,data=ex1))
boxplot(residuals(lm(FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4,data=ex1)))
ex1
ex1[-40,]
ex1<-ex1[-40,]
shapiro.test(residuals(lm(FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4,data=ex1)))
step(lm(FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13+
ROAD.x_i4,data=ex1))
step(lm(FUEL.x_i5~1,data=ex1),scope=FUEL.x_i5~
TAX.x_i1+DLIC.x_i2+INC.x_i13+ROAD.x_i4)
shapiro.test(residuals(lm(FUEL.x_i5~TAX.x_i1+DLIC.x_i2+INC.x_i13,data=ex1)))
install.packages('BioStatR')
library(BioStatR)
data('Mesures')
str('Mesures')
str(Mesures)
lauriers<-subset(Mesures,subset=(Mesures$espece=="laurier rose"))
lauriers
write.csv('lauriers.txt')
write.csv(lauriers,'lauriers.csv')
bignones<-subset(Mesures5,subset=(Mesures5$espece=="bignone"))[,c(1,4)]
write.csv(bignones,'bignones.csv')
