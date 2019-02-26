#Boxplot, ouliers et paramètres

set.seed(123)
data=rlnorm(1000,5,5)
summary(data)
boxplot(data)

boxplot(data)

#La boîte sans les outliers
boxplot(data,outline=FALSE)

parambp=boxplot(data, plot=FALSE)
parambp$stats[1,] #Limite moustache inférieure
abline(h=parambp$stats[1,],col="orange")
parambp$stats[2,] #1er quartile
abline(h=parambp$stats[2,],col="red")
parambp$stats[3,] #Médiane
abline(h=parambp$stats[3,],col="green")
parambp$stats[4,] #3ème quartile
abline(h=parambp$stats[4,],col="blue")
parambp$stats[5,] #Limite moustache supérieure
abline(h=parambp$stats[5,],col="pink")

#Les outliers
outliers=subset(data, data>parambp$stats[5,] | data<parambp$stats[1,])

#Sans les outliers
inlierss=subset(data, data<=parambp$stats[5,] & data>=parambp$stats[1,])
#La boxplot construite sans les outliers, n'est évidemment pas la même que la précédente lorsque nous choisissons de ne pas afficher les outliers.
layout(t(1:2))
boxplot(data,outline=FALSE)
boxplot(inlierss)
layout(1)

#Plus clair avec des données issues d'une loi normale centrée et réduite

set.seed(123)
data=rnorm(1000,5,5)
summary(data)
boxplot(data)

boxplot(data)

#La boîte sans les outliers
boxplot(data,outline=FALSE)

parambp=boxplot(data, plot=FALSE)
parambp$stats[1,] #Limite moustache inférieure
abline(h=parambp$stats[1,],col="orange")
parambp$stats[2,] #1er quartile
abline(h=parambp$stats[2,],col="red")
parambp$stats[3,] #Médiane
abline(h=parambp$stats[3,],col="green")
parambp$stats[4,] #3ème quartile
abline(h=parambp$stats[4,],col="blue")
parambp$stats[5,] #Limite moustache supérieure
abline(h=parambp$stats[5,],col="pink")



