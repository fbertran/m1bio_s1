1+1
1+1
rnorm(10)
read.table("https://fbertran.github.io/homepage/enseignement/Master1_2019/temperature.txt")

# Ceci est un commentaire que R n'exécutera pas

read.table( #fonction pour lire les tabeaux
"https://fbertran.github.io/homepage/enseignement/Master1_2019/temperature.txt")
temperature <- read.table( #fonction pour lire les tabeaux
"https://fbertran.github.io/homepage/enseignement/Master1_2019/temperature.txt")
str(temperature)
head(temperature)
temperature <- read.table( #fonction pour lire les tabeaux
"https://fbertran.github.io/homepage/enseignement/Master1_2019/temperature.txt",
header = TRUE)
# Sous mac, il peut être nécessaire de spécifier l'encoding du fichier
temperature <- read.table( #fonction pour lire les tabeaux
  "https://fbertran.github.io/homepage/enseignement/Master1_2019/temperature.txt",
  header = TRUE,encoding="latin1")
str(temperature)
head(temperature)
temperature <- read.table( #fonction pour lire les tabeaux
"https://fbertran.github.io/homepage/enseignement/Master1_2019/temperature.txt",
header = TRUE, dec = ",",encoding="latin1")
str(temperature)
head(temperature)
temperature <- read.table( #fonction pour lire les tabeaux
"https://fbertran.github.io/homepage/enseignement/Master1_2019/temperature.txt",
header = TRUE, dec = ",", row.names = 1,encoding="latin1")
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
temperature[c("Brest","Lyon"),"mars"]
temperature[c("Brest","Lyon"),"mars",drop=FALSE]
temperature[c("Brest","Lyon"),c("mars","juillet")]
temperature[c("Brest","Brest"),c("mars","mars")]
c(1,2,3)
c("Brest","Lyon")
read.csv("https://fbertran.github.io/homepage/enseignement/Master1_2019/quetelet.csv")
quetelet <- read.csv("https://fbertran.github.io/homepage/enseignement/Master1_2019/quetelet.csv")
quetelet <- read.csv("https://fbertran.github.io/homepage/enseignement/Master1_2019/quetelet.csv")
str(quetelet)
head(quetelet)

write.csv(temperature,file="temperature.csv")
getwd()
setwd("U:/TD_Stat_M1S1_2019/")
getwd()
write.csv(temperature,file="temperature.csv")

#Choix du fichier par boite de dialogue
file.choose()
write.csv(temperature,file=file.choose())


#autre exemple. Régler le répertoire de travail dans le répertoire contenant "europe.csv"
europe <- read.table("europe.csv",dec=".",
                     sep=";",quote="n",header=T)
View(europe)
europe <- read.table(paste(Chemin,"europe.csv",sep=""),
                     dec=".", sep=";",quote="\"",header=TRUE)
View(europe)
head(europe)
str(europe)
summary(europe)



