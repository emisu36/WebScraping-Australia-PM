#### Preamble ####
# Purpose: Simulates Crime Rates in Toronto
# Author: Ping-Jen (Emily) Su
# Date: 23 Janurary 2024 
# Contact: emily.su@mail.utoronto.ca
# Pre-requisites: Need to retrieve the data of crime rates in Toronto

# install.packages("tidyverse")
# install.packages("janitor")
install.packages("gitcreds")
install.packages("credentials")

#### Workspace setup ####
library(tidyverse)
library(janitor)

set.seed(853)

simulated_dataset <-
  tibble(
    prime_minister = babynames |>
      filter(prop > 0.01) |>
      distinct(name) |>
      unlist() |>
      sample(size = 10, replace = FALSE),
    birth_year = sample(1700:1990, size = 10, replace = TRUE),
    years_lived = sample(50:100, size = 10, replace = TRUE),
    death_year = birth_year + years_lived
  ) |>
  select(prime_minister, birth_year, death_year, years_lived) |>
  arrange(birth_year)

simulated_dataset

