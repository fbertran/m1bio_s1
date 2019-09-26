library(openxlsx)
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

write.xlsx(Calcium,file="Calcium.xlsx")

