# muriqui-MHC

This repository contains data and code used for the analyses presented in "Paternity data reveal high MHC diversity in a polygynandrous, egalitarian primate" (Chaves, Strier, and Di Fiore, under review).

The "data" folder includes the following files:
- adults_genos.txt = 15 loci genotype for adults in the Matão group (N = 64: 32 males and 32 females)
- all_genos.txt = 15 loci genotype for adults + immatures in the Matão group (N = 111: 32 males, 32 females, 37 immatures)
- mhc_males.txt = summary of MHC alleles found in each adult male sire
- mhc_females.txt = summary of MHC alleles found in each adult female dam
- parentage_and_candidates.txt = summary of dam, genetically-assigned sire, and set of candidate sires for each of 47 immatures

The RMarkdown document "Muriqui MHC Analyses.Rmd" includes code to:
- read genotype data and construct matrices of estimated dyadic relatedness among pairs of either adult or all individuals in the population
- read MHC variation data for each individual
- construct matrices of female-male allele sharing, male allelic diversity, female-male allele dissimilarity, male allelic uniqueness, and female- male relatedness between dams and potential sires of those dams offspring
- and conduct genetic simulations to test predictions outlined in the manuscript about the relationship between patterns of parentage and MHC and neutral genetic variation among dams and sires


