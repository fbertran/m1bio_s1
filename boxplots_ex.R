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
