
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
#Nous calculons la somme des rangs dans chaque groupe
tapply(rank(foret$hauteur),foret$groupe,sum)
27*28/2

with(foret,plot(hauteur~groupe))

with(foret,wilcox.test(hauteur~groupe))

#U1 pour la forêt 1
13*14+13*(13+1)/2-203
#U2 pour la forêt 2
13*14+14*(14+1)/2-175










pommes=data.frame(Variété=factor(rep(c("V1",
"V2",
"V3",
"V4",
"V5",
"V6"),5)),Teneur.Vitamine.C=
c(93.6 ,95.3 ,96.0 ,93.7 ,96.2,
95.3 ,96.9 ,95.8 ,97.3 ,97.7,
94.5 ,97.0 ,97.8 ,97.0 ,98.3,
98.8 ,98.2 ,97.8 ,97.2 ,97.9,
94.6 ,97.8 ,98.0 ,95.0 ,98.9,
93.2 ,94.4 ,93.8 ,95.6 ,94.8))


str(pommes)
head(pommes)
tail(pommes)

with(pommes,plot(Variété,Teneur.Vitamine.C))

#Nous procédons au calcus de l'analyse de la variance de la variable \verb+Teneur.Vitamine.C+ par la variable Variété la variable Bière

Model1 <-aov(Teneur.Vitamine.C~Variété, data=pommes)

#Normalité

qqnorm(residuals(Model1))
qqline(residuals(Model1))
shapiro.test(residuals(Model1))

#Homogénéité
bartlett.test(residuals(Model1)~pommes$Variété)

  
#La lecture de la $p$-valeur du test du tableau de l'analyse de la variance est légitime. Conclusion.

summary(Model1)

oneway.test(Teneur.Vitamine.C~Variété, var.equal=TRUE, data=pommes)


#Voici les estimations des effets fixes du facteur Variété


#Nous pouvons réaliser une comparaison individuelle à l'aide de la procédure de Tukey puisque l'hypothèse nulle a été rejetée.

model.tables(Model1)

TukeyHSD(Model1, "Variété", ordered = FALSE)
plot(TukeyHSD(Model1, "Variété"))


#Inférence conditionnelle
#Tests de permutations (\verb+lmPerm+)

library(pgirmess)
Res_perm <- PermTest(Model1,B=1000)
print(Res_perm)
#Tests de permutations II (lmPerm)
library("lmPerm")

Model1.perm <-aovp(Teneur.Vitamine.C~Variété, data=pommes)
summary(Model1.perm)

#Permutational Anova III, KW et post-hocs
library(coin)
library(multcomp)
library(car)
Anova_oneway <- oneway_test(Teneur.Vitamine.C ~ Variété, data = pommes, 
distribution = "asymptotic")
Anova_oneway_MC <- oneway_test(Teneur.Vitamine.C ~ Variété, 
data = pommes, distribution = 
approximate(B = 90000))

#Anova\_oneway\_MC

print(Anova_oneway)
print(Anova_oneway_MC)


#IC $p$-value perm Anova\_oneway

print(pvalue(Anova_oneway))
print(pvalue(Anova_oneway_MC))
if (pvalue(Anova_oneway_MC) <= 0.05) {
Tukey_posthoc <- oneway_test(Teneur.Vitamine.C ~ Variété, data = exo1TD1,
ytrafo = function(data) trafo(data, numeric_trafo = rank),
xtrafo = function(data) trafo(data, factor_trafo = function(x)
model.matrix(~x - 1) %*% t(contrMat(table(x), "Tukey"))),
teststat = "max", distribution = approximate(B = 90000))
###Posthocs
print(pvalue(Tukey_posthoc, method = "single-step"))
}


#Test de Kruskal-Wallis

print(leveneTest(pommes$Teneur.Vitamine.C,pommes$Variété))
kruskalwallis <- kruskal_test(Teneur.Vitamine.C ~ Variété, data = pommes,
distribution = "asymptotic")
kruskalwallis_MC <- kruskal_test(Teneur.Vitamine.C ~ Variété, data = pommes,
distribution = approximate(B = 90000))
print(kruskalwallis)
print(kruskalwallis_MC)


#$p$-value KW

print(pvalue(kruskalwallis))
print(pvalue(kruskalwallis_MC))
if (pvalue(kruskalwallis) <= 0.05) {
NDWD <- oneway_test(Teneur.Vitamine.C ~ Variété, data = exo1TD1,
ytrafo = function(data) trafo(data, numeric_trafo = rank),
xtrafo = function(data) trafo(data, factor_trafo = function(x)
model.matrix(~x - 1) %*% t(contrMat(table(x), "Tukey"))),
teststat = "max", distribution = approximate(B = 90000))
#Variable
### global p-value
print(pvalue(NDWD))
### adjusted posthocs
print(pvalue(NDWD, method = "single-step")) }
