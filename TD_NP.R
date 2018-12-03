
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

foret = data.frame(hauteur=c(23.4, 24.4, 22.5, 22.9,
24.6, 24.9, 23.7, 24.0,
25.0, 26.2, 24.3, 24.5,
26.3, 26.5, 25.3, 26.0,
26.6, 26.8, 26.1, 26.4,
27.0, 27.6, 26.7, 26.9,
27.7, 27.4, 28.5),
groupe=factor(c(rep(c(1,1,2,2),6),c(1,2,2))))
foret
tapply(rank(foret$hauteur),foret$groupe,sum)
with(foret,plot(hauteur~groupe))
