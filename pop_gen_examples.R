library(pegas)
library(adegenet)
library(hierfstat)
library(PopGenReport)
library(tidyverse)

f <- read.genetable(file.choose(),
  ind = 1,
  pop = 2,
  lat = 3,
  long = 4,
  other.min = 5,
  other.max = 6,
  oneColPerAll = FALSE,
  ncode = 3,
  sep = ""
)

