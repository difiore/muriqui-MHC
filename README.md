# muriqui-MHC

## Overview
This repository contains data and code used for the analyses presented in the manuscript "Paternity data reveal high MHC diversity among sires in a polygynandrous, egalitarian primate" (Chaves, Strier, & Di Fiore, under review, *Proceedings of the Royal Society of London Series B: Biological Sciences*).

The RMarkdown document titled "Muriqui MHC Analyses.Rmd" includes R code to:
- Read genotype data and construct matrices of estimated dyadic relatedness (Queller-Goodnight R) among pairs of either adult or all individuals in the population using the {related} package.
- Compare mean dyadic relatedness among different classes of adult dyads (male-male, female-female, and moxed sex) to those expected by chance via permutation.
- Read MHC variation data for individual dams and potential sires.
- Construct matrices of female-male allele sharing, male allelic diversity, female-male allele dissimilarity, male allelic uniqueness, and female- male relatedness between dams and potential sires of those dams offspring, using long-term demographic data to take into account male "availability" for siring (>5 years old, present in the group at time of each offspring's conception).
- Conduct genetic simulations via permutation to test predictions outlined in the manuscript about the relationship between patterns of parentage and MHC and neutral genetic variation among dams and sires.
- Conduct various additional analyses presented in the manuscript.
- Generate save various useful data structures of interest (e.g., relatedness matrices, simulation results).
- Generate and save plots presented in the manuscript and in ESM.

## **data** Directory
The **data** directory includes the following files:
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
- **mhc_dissimilarity.txt** = summary of our measure of MHC dissimilarity (number of unshared alleles) among dyads of all individuals in the dataset.
- **mhc_females.txt** = summary of MHC alleles found in each adult female dam.
- **mhc_males.txt** = summary of MHC alleles found in each adult male sire.
- **parentage_and_candidates.txt** = summary of dam, genetically-assigned sire, and set of candidate sires for each of 47 immatures.

NOTES:
- The genotypes in **adults_genos.txt**, **all_genos.txt**, **adults_kingroup2.txt**, and **all_kingroup2.txt** replicate data included in ESM Table 2, with the exception that genotypes for two loci difficult to score loci, LL113 and LL1110, are omitted. See Chaves, Strier, & Di Fiore (under review) for details.
- The parentage information presented in **parentage_and_candidates.txt** is included in ESM Table4 with slightly different formatting.
- All data files are in plain text (".txt") tab-separated value format, with the exception of **adults_kingroup2.txt**, and **all_kingroup2.txt**, which are in comma-separated value format.

## **data/kingroup2** Directory
The **data/kingroup2** directory includes the results of running likelihood tests in the software KINGROUP2 to evaluate the hypotheses of dyads being [1] full siblings versus unrelated, [2] half siblings versus unrelated, or [3] parent-offspring versus unrelated based on each of the two genotype datasets ("adults only" and "all individuals"). These files have the following self-explanatory names:
- **FS_vs_UN_adult.txt**
- **FS_vs_UN_all.txt**
- **HS_vs_UN_adult.txt**
- **HS_vs_UN_all.txt**
- **PO_vs_UN_adult.txt**
- **PO_vs_UN_all.txt**

NOTES:
- These files are lightly edited from the original KINGROUP2 output to include just the likelihood ratio test results (genotype, per locus allele frequency, and estimated R blocks are omitted).

## **outputs** Directory
The **outputs** directory is where select intermediate data structures are saved during execution of the ".Rmd" document.

## **figures** Directory
The **figures** Directory is where select plots (including those presented in the main manuscript and in ESM) are saved during execution of the ".Rmd" document.
