
poids<-c(0.55, 0.62, 0.54, 0.58, 0.63, 0.64, 0.60, 0.62, 0.59, 0.67, 0.62, 0.61)

install.packages("BSDA")
library(BSDA)
SIGN.test(poids,md = .65)

wilcox.test(poids)
#library(coin)
#wilcoxsign_test(poids)

#Symétrie ?
#Pas par rapport à 0 !
#Mais par rapport à -.04 pourquoi pas.
hist(poids-.65)
plot(density(poids-.65))



