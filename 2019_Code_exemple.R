1+1
1+1
rnorm(10)
read.table(
"https://fbertran.github.io/homepage/enseignement/Master1_2019/temperature.txt")
read.table( #fonction pour lire les tabeaux
"https://fbertran.github.io/homepage/enseignement/Master1_2019/temperature.txt")
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
temperature[c("Brest","Lyon"),"mars"]
temperature[c("Brest","Lyon"),"mars",drop=FALSE]
temperature[c("Brest","Lyon"),c("mars","juillet")]
temperature[c("Brest","Brest"),c("mars","mars")]
1 2 3
1,2,3
c(1,2,3)
c("Brest","Lyon")
read.csv("https://fbertran.github.io/homepage/enseignement/Master1_2019/quetelet.csv"
)
quetelet <- read.csv("https://fbertran.github.io/homepage/enseignement/Master1_2019/quetelet.csv"
)
quetelet <- read.csv("https://fbertran.github.io/homepage/enseignement/Master1_2019/quetelet.csv"
)
str(quetelet)
head(quetelet)
library(openxlsx)
install.packages("openxlsx")
library(openxlsx)
read.xlsx(
"https://fbertran.github.io/homepage/enseignement/Master1_2019/TDExo1.xlsx")
if(!require("openxlsx")){install.packages("openxlsx")}
if(!require("openxlsx")){install.packages("openxlsx")}
library(openxlsx)
read.xlsx(
"https://fbertran.github.io/homepage/enseignement/Master1_2019/TDExo1.xlsx")
read.xlsx(
"https://fbertran.github.io/homepage/enseignement/Master1_2019/TDExo1.xlsx",
sheet = 1)
read.xlsx(
"https://fbertran.github.io/homepage/enseignement/Master1_2019/TDExo1.xlsx",
sheet = 2)
read.xlsx(
"https://fbertran.github.io/homepage/enseignement/Master1_2019/TDExo1.xlsx",
sheet = "Calcium")
Calcium <- read.xlsx(
"https://fbertran.github.io/homepage/enseignement/Master1_2019/TDExo1.xlsx")
head(Calcium)
write.csv(Calcium,file="Calcium.csv")
getwd()
setwd("U:/TD_Stat_M1S1_2019/")
getwd()
write.csv(Calcium,file="Calcium.csv")
write.csv(Calcium,file=file.choose())
file.choose()
file.choose()
