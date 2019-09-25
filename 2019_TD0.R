1+1
rnorm(10)

# Ceci est un commentaire que R n'exécutera pas
"https://fbertran.github.io/homepage/enseignement/Master1_2019/temperature.txt"

temperature <- read.table( #fonction pour lire les tabeaux
  "https://fbertran.github.io/homepage/enseignement/Master1_2019/temperature.txt")

str(temperature)
head(temperature)

temperature <- read.table( #fonction pour lire les tabeaux
  "https://fbertran.github.io/homepage/enseignement/Master1_2019/temperature.txt",
  header = TRUE)

str(temperature)
head(temperature)

temperature <- read.table( #fonction pour lire les tabeaux
  "https://fbertran.github.io/homepage/enseignement/Master1_2019/temperature.txt",
  header = TRUE, dec = ",")

str(temperature)
head(temperature)

temperature <- read.table( #fonction pour lire les tabeaux
  "https://fbertran.github.io/homepage/enseignement/Master1_2019/temperature.txt",
  header = TRUE, dec = ",", row.names = 1)

str(temperature)
head(temperature)

temperature["Brest",]
temperature["Brest","mars"]
temperature[,"mars"]
temperature[,"mars",drop=FALSE]

temperature[c("Brest","Lyon"),"mars"]
temperature[c("Brest","Lyon"),"mars",drop=FALSE]

temperature[c("Brest","Lyon"),c("mars","juillet")]
temperature[c("Brest","Lyon"),c("mars","juillet"),drop=FALSE]

temperature[c("Brest","Brest"),c("mars","mars")]

c(1,2,3)
c("Brest","Lyon")

quetelet <- read.csv(
  "https://fbertran.github.io/homepage/enseignement/Master1_2019/quetelet.csv")
#pour read.csv, par défaut header=TRUE. Si la première ligne ne contient 
# pas le nom des colonnes, alors utiliser l'option header=FALSE
str(quetelet)
head(quetelet)

if(!require("openxlsx")){install.packages("openxlsx")}
library(openxlsx)
read.xlsx(
  "https://fbertran.github.io/homepage/enseignement/Master1_2019/TDExo1.xlsx")
# par défaut, c'est la 1ère feuille du classeur qui est lue
read.xlsx(
  "https://fbertran.github.io/homepage/enseignement/Master1_2019/TDExo1.xlsx",
  sheet = 2)
# option sheet pour spécifier la seconde feuille
read.xlsx(
  "https://fbertran.github.io/homepage/enseignement/Master1_2019/TDExo1.xlsx",
  sheet = "Calcium")

Calcium <- read.xlsx(
  "https://fbertran.github.io/homepage/enseignement/Master1_2019/TDExo1.xlsx")
head(Calcium)

write.csv(Calcium,file="U:/TD_Stat_M1S1_2019/Calcium.csv")
getwd()

setwd("U:/TD_Stat_M1S1_2019/")
getwd()
write.csv(Calcium,file="Calcium.csv")
write.csv(Calcium,file=file.choose())




