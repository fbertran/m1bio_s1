
sachets = read.csv(file = "Cours3.csv", sep=";", dec=",")
str(sachets)
sachets$Semaines <- factor(sachets$Semaines)
str(sachets)
modele_sachet=aov(Masses~Semaines*Especes,
                  data=sachets)
modele_sachet=aov(Masses~Semaines+Especes+Semaines:Especes,
                  data=sachets)
library(pgirmess)
PermTest(modele_sachet)
PermTest(modele_sachet, B=10000)
#Based on 10000 replicates
#Simulated p-value:
#  p.value
#Semaines          0.0000
#Especes           0.0172
#Semaines:Especes  0.4424
binom.test(0,10000,conf.level=.99)
binom.test(172,10000,conf.level=.99)
binom.test(4424,10000,conf.level=.99)

#eta^2 semaines
1741/(1741+58+30+57)
#eta^2 especes
58/(1741+58+30+57)
#eta^2 interaction
30/(1741+58+30+57)
