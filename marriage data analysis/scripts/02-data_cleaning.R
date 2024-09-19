#### Preamble ####
# Purpose: Cleans the raw plane data 
# Author: 
# Date: 
# Contact: 
# License: MIT
# Pre-requisites: none
# Any other information needed? none

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") |>
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-")))



#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
