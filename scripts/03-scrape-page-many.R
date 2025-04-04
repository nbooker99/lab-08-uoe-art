# load packages ----------------------------------------------------------------

library(tidyverse)
library(rvest)
library(glue)

# list of urls to be scraped ---------------------------------------------------

root <- "https://collections.ed.ac.uk/art/search/*:*/Collection:%22edinburgh+college+of+art%7C%7C%7CEdinburgh+College+of+Art%22?offset="
numbers <- seq(from = 0, to = 3312, by = 10)
urls <- glue("{root}{numbers}")

# map over all urls and output a data frame ------------------------------------

#🛑 this takes several minutes to run 🛑 
uoe_art <- map_dfr(urls, scrape_page)

# write out data frame ---------------------------------------------------------

write_csv(uoe_art, file = "data/uoe-art.csv")
