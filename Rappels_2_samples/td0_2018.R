install.packages("HSAUR")
data("roomwidth",package="HSAUR")
head(roomwidth)
str(roomwidth)
#str => structure
roomwidth$unit
table(roomwidth$unit)
with(roomwidth,unit)
with(roomwidth,table(unit))

with(roomwidth,boxplot(width~unit))
roomwidth

convert<- ifelse(roomwidth$unit == "feet", 1, 3.28)
convert

with(roomwidth,boxplot(I(width*convert)~unit))

#test de student dans R
t.test
#Hypothèses
#Indépendance
#Normalité
#?Egalité des variances
shapiro.test()
#with(roomwidth <- dit à R de travailler avec les 
#variables de roomwidth
with(roomwidth,tapply(width,unit,shapiro.test))
#tapply(valeurs,groupes,fonction)
#rejet de la normalité des deux populations

?wilcox.test
help("wilcox.test")
wilcox.test(I(width*convert) ∼ unit, data=roomwidth, conf.int=T)

