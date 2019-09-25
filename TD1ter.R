
tapply(Calcium$Taux, Calcium$Lot, median, na.rm=TRUE)
oneway_test(Taux ~ Lot, alternative='two.sided', distribution='exact', 
  data=Calcium)
tapply(Calcium$Taux, Calcium$Lot, median, na.rm=TRUE)
kruskal_test(Taux ~ Lot, data=Calcium, distribution=approximate(B = 1000 ) )
Global p-value (distribution = approximate(B = 90000)):0.0034
Pairwise comparisons of groups:
pvalue(NDWD, method = 'single-step')
tapply(Calcium$Taux, Calcium$Lot, median, na.rm=TRUE)
oneway_test(Taux ~ Lot, alternative='two.sided', data=Calcium)
tapply(Calcium$Taux, Calcium$Lot, median, na.rm=TRUE)
oneway_test(Taux ~ Lot, alternative='two.sided', data=Calcium)
tapply(Calcium$Taux, Calcium$Lot, median, na.rm=TRUE)
oneway_test(Taux ~ Lot, alternative='two.sided', distribution='approximate',
   data=Calcium)
tapply(Calcium$Taux, Calcium$Lot, median, na.rm=TRUE)
oneway_test(Taux ~ Lot, alternative='two.sided', distribution='approximate',
   data=Calcium)
tapply(Calcium$Taux, Calcium$Lot, median, na.rm=TRUE)
kruskal_test(Taux ~ Lot, data=Calcium)
Global p-value (distribution = approximate(B = 90000)):0.00356666666666667
Pairwise comparisons of groups:
pvalue(NDWD, method = 'single-step')
tapply(Calcium$Taux, Calcium$Lot, median, na.rm=TRUE)
kruskal_test(Taux ~ Lot, data=Calcium, distribution=approximate(B = 1000 ) )
Global p-value (distribution = approximate(B = 90000)):0.00363333333333333
Pairwise comparisons of groups:
pvalue(NDWD, method = 'single-step')
 pvalue(NDWD)
NDWD


it <- independence_test(Taux ~ Lot, data = Calcium,
                        distribution = approximate(B = 50000),
                        ytrafo = function(data)
                            trafo(data, numeric_trafo = rank_trafo),
                        xtrafo = mcp_trafo(Lot = "Tukey"))

it
pvalue(it,method="single-step")
