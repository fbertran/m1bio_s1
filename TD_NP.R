
poids<-c(0.55, 0.62, 0.54, 0.58, 0.63, 0.64, 0.60, 0.62, 0.59, 0.67, 0.62, 0.61)

install.packages("BSDA")
library(BSDA)
SIGN.test(poids,md = .65)

#Symétrie ?
#Pas par rapport à 0 !
#Mais par rapport à -.04 pourquoi pas.
hist(poids-.65)
plot(density(poids-.65))

wilcox.test(poids, mu = .65)
#library(coin)
#wilcoxsign_test(poids)


enfants = data.frame(matrix(c(82, 63,
69, 42,
73, 74,
43, 37,
58, 51,
56, 43,
76, 80,
65, 62),byrow=TRUE,ncol=2))
colnames(enfants) <- c("Scores enfants scolarisés","Scores enfants non-scolarisés")
enfants
wilcox.test(enfants[,1],enfants[,2],paired=TRUE)

library(coin)
enfants_long = data.frame(score=c(enfants[,1],enfants[,2]),group=c(rep("s",8),rep("ns",8)),jumeaux=factor(rep(1:8,2)))
enfants_long
#Ne pas utiliser, car repose sur une approximation et donc moins précis que le test exact.
with(enfants_long,wilcoxsign_test(score~group|jumeaux, distribution = "asymptotic"))
#Nous vérifions que la valeur calculée par défaut dans ce cas par la fonction wilcox.test est la valeur "exacte".
with(enfants_long,wilcoxsign_test(score~group|jumeaux, distribution = "exact"))


