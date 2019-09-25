#install.packages("HSAUR")
#A n'exécuter qu'une seule fois pour 
#télécharger le package sur l'ordinateur
data(roomwidth,package="HSAUR")
#Affiche un aperçu du jeu de données
head(roomwidth,n=10)
tail(roomwidth,n=3)
#Affiche la structure du jeu de données
str(roomwidth)
#Permet de sélectionner unit 
#dans roomwidth
roomwidth$unit
#La fonction levels permet de répondre à
#la question 5
levels(roomwidth$unit)
boxplot(width~unit,data=roomwidth)
1==2
1==1
roomwidth$unit=="feet"
convert <- ifelse(roomwidth$unit==
                    "feet",1,3.28)
roomwidth$width*convert
mean(roomwidth$width*convert)

tapply(roomwidth$width*convert,
       roomwidth$unit, summary)

tapply(roomwidth$width*convert,
       roomwidth$unit, sd)

boxplot(width*convert~unit,data=roomwidth)

layout(matrix(c(1,2,1,3),
              nrow=2,ncol=2,
              byrow=F))

boxplot(I(width*convert) ~ 
          unit, data=roomwidth,
ylab="Estimated width(feet)", 
varwidth=T,
names=c(
"Estimates in feet",
"Estimates in metres (converted to feet)"))

feet <- roomwidth$unit=="feet"
qqnorm(roomwidth$width[feet],
ylab="Estimated width(feet)")
qqline(roomwidth$width[feet])
qqnorm(roomwidth$width[!feet],
ylab="Estimated width(metres)")
qqline(roomwidth$width[!feet])

shapiro.test(roomwidth$width[feet])
shapiro.test(roomwidth$width[!feet])

wilcox.test(I(width*convert) ~ unit, data=roomwidth, conf.int=T)
