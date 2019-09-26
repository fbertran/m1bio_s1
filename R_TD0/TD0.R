1+1
boxplot(rnorm(50))

exp(log(5))^2
1/sqrt(2*pi)*exp(-1/2)

x=45
y <- 5
5 ->z
5=z

y <- 9

#Ceci est un commentaire
#R fait la différence entre minuscules et majuscules

Y <- 0

#1,2
1.2

x
X

x/y

1+1;2+2;3+3

a <- 1+2
a

(a <- 1+2)


age = c(26, 25, 23, 19, 22, 21, 26, 27, 22, 18, 31, 32, 38, 27, 24, 25)
age

#6 première valeurs
head(age)
#6 dernières valeurs
tail(age)

age^2
sqrt(age)
log_age <- log(age)

#4 point 4
#Extraction

age[3]
age[10:12]
c(2,4,6)
age[c(2,4,6)]
age[-(1:5)]

jeune <- age[age<20]

rm(a)

save(age,file="age.RData")
getwd()
#Utiliser un / et un \
setwd("U:/RBio_2018")


install.packages("Rcmdr",type="binary")
library(Rcmdr)

