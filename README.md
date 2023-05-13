# muriqui-MHC

This repository contains data and code used for the analyses presented in "Paternity data reveal high MHC diversity among sires in a polygynandrous, egalitarian primate" (Chaves, Strier, & Di Fiore, under review, Proceedings of the Royal Society of London Series B: Biological Sciences).

The "data" folder includes the following files:
- adults.txt = ID and sex for adults in the Matão group (N = 64: 32 males and 32 females)
- adults_genos.txt = 15-loci genotypes for adults in the Matão group (N = 64: 32 males and 32 females)

These are equivalent to 

- all_genos.txt = 15-loci genotypes for adults + immatures in the Matão group (N = 111: 32 males, 32 females, 37 immatures)
- loci.txt = locus names for 15 loci in the genotype panel
- mhc_males.txt = summary of MHC alleles found in each adult male sire
- mhc_females.txt = summary of MHC alleles found in each adult female dam
- parentage_and_candidates.txt = summary of dam, genetically-assigned sire, and set of candidate sires for each of 47 immatures

NOTES: The genotypes in adults_genos.txt and all_genos.txt replicate data included in ESM Table 2, with the exception that genotypes for two loci difficult to score loci, LL113 and LL1110, are excluded. See Chaves, Strier, & Di Fiore (under review) for details.

The RMarkdown document "Muriqui MHC Analyses.Rmd" includes R code to:
- read genotype data and construct matrices of estimated dyadic relatedness (Queller-Goodnight R) among pairs of either adult or all individuals in the population using the {related} package
- compare mean dyadic relatedness among different classes of adult dyads (male-male, female-female, and moxed sex) to those expected by chance via permutation
- read MHC variation data for individual dams and potential sires
- construct matrices of female-male allele sharing, male allelic diversity, female-male allele dissimilarity, male allelic uniqueness, and female- male relatedness between dams and potential sires of those dams offspring, using long-term demographic data to take into account male "availability" for siring (>5 years old, present in the group at time of each offspring's conception)
- conduct genetic simulations via permutation to test predictions outlined in the manuscript about the relationship between patterns of parentage and MHC and neutral genetic variation among dams and sires

