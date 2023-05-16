# muriqui-MHC

This repository contains data and code used for the analyses presented in "Paternity data reveal high MHC diversity among sires in a polygynandrous, egalitarian primate" (Chaves, Strier, & Di Fiore, under review, Proceedings of the Royal Society of London Series B: Biological Sciences).

The "data" folder includes the following files:
- **adults_genos.txt** = 15-loci genotypes for adults in the Matão group (N = 64: 32 males and 32 females).
- **adults_kingroup2.txt** = genotype data and estimated Queller-Goodnight R values for all adult dyads, as calculated by the software KINGROUP2.
- **adults.txt** = ID, sex, individual heterozygosity, and number of unique MHC alleles for adults in the Matão group (N = 64: 32 males and 32 females). Note that for five females, no information is presented on MHC diversity because only confirmed dams were typed for MHC.
- **all_genos.txt** = 15-loci genotypes for adults + immatures in the Matão group (N = 111: 32 males, 32 females, 37 immatures).
- **all_kingroup2.txt** = genotype data and estimated Queller-Goodnight R values for dyads of all individuals (adults + immatures), as calculated by the software KINGROUP2.
- **dyad.types** - classification of all dyads into kinship class and/or sex-class dyads on the basis of parentage analysis results and individual sex
  - DO = dam-offspring
  - SO = sire-offspring
  - FS = full siblings
  - MHS = maternal half siblings
  - PHS = paternal half siblings
  - MM = male-male
  - MS = mixed sex
  - FF = female-female
  - DS = dam-sire
  - SS = successive sires of offspring of the same dam
- **loci.txt** = locus names for 15 loci in the genotype panel in the order that they appear in the **adult_genos.txt** and **all_genos.txt** data files.
- **mhc_dissimilarity.txt**
- **mhc_females.txt** = summary of MHC alleles found in each adult female dam
- **mhc_males.txt** = summary of MHC alleles found in each adult male sire
- **parentage_and_candidates.txt** = summary of dam, genetically-assigned sire, and set of candidate sires for each of 47 immatures

NOTES:
- The genotypes in **adults_genos.txt**, **all_genos.txt**, **adults_kingroup2.txt**, and **all_kingroup2.txt** replicate data included in ESM Table 2, with the exception that genotypes for two loci difficult to score loci, LL113 and LL1110, are omitted. See Chaves, Strier, & Di Fiore (under review) for details.
- The parentage information presented in **parentage_and_candidates.txt** is included in ESM Table4 with slightly different formatting.
- All data files are in plain text (".txt") tab-separated value format, with the exception of **adults_kingroup2.txt**, and **all_kingroup2.txt**, which are in comma-separated value format.

The RMarkdown document "Muriqui MHC Analyses.Rmd" includes R code to:
- read genotype data and construct matrices of estimated dyadic relatedness (Queller-Goodnight R) among pairs of either adult or all individuals in the population using the {related} package
- compare mean dyadic relatedness among different classes of adult dyads (male-male, female-female, and moxed sex) to those expected by chance via permutation
- read MHC variation data for individual dams and potential sires
- construct matrices of female-male allele sharing, male allelic diversity, female-male allele dissimilarity, male allelic uniqueness, and female- male relatedness between dams and potential sires of those dams offspring, using long-term demographic data to take into account male "availability" for siring (>5 years old, present in the group at time of each offspring's conception)
- conduct genetic simulations via permutation to test predictions outlined in the manuscript about the relationship between patterns of parentage and MHC and neutral genetic variation among dams and sires
