#### Preamble ####
# Purpose: Sanity check of the data
# Author: 
# Date: 
# Contact: 
# License: MIT
# Pre-requisites: need to have simulated data
# Any other information needed? none


#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NAs
all(is.na(data$number_of_marriage))

