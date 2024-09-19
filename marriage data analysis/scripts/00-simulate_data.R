#### Preamble ####
# Purpose: Simulates marriage data
# Author: 
# Date: 09/19/2024
# Contact: 
# License: MIT
# Pre-requisites: none
# Any other information needed? none

#### Workspace setup ####
library(tidyverse)


#### Simulate data ####

set.seed(12345)

start_dtae <- as.Date("2022-01-01")
end_date <- as.Date("2023-12-31")

number_of_dates <- 100

data <-
  tibble(
    date = as.Date(runif(n = number_of_dates, min = as.numeric(start_dtae), max = as.numeric(end_date))),
    number_of_marriage = rpois(number_of_dates, lambda = 10)
  )



write_csv(data, file = "data/raw_data/simulated.csv")

