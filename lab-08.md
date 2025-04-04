Lab 08 - University of Edinburgh Art Collection
================
Insert your name here
Insert date here

## Load Packages and Data

First, let’s load the necessary packages:

``` r
library(tidyverse) 
library(skimr)
```

Now, load the dataset. If your data isn’t ready yet, you can leave
`eval = FALSE` for now and update it when needed.

``` r
# Remove eval = FALSE or set it to TRUE once data is ready to be loaded
uoe_art <- read_csv("data/uoe-art.csv")
```

## Exercise 9

Let’s start working with the **title** column by separating the title
and the date:

``` r
uoe_art <- uoe_art %>%
  separate(title, into = c("title", "date"), sep = "\\(") %>%
  mutate(year = str_remove(date, "\\)") %>% as.numeric()) %>%
  select(title, artist, year, ___)  # Fill in the missing variable!
```

    ## Error in parse(text = input): <text>:4:32: unexpected input
    ## 3:   mutate(year = str_remove(date, "\\)") %>% as.numeric()) %>%
    ## 4:   select(title, artist, year, __
    ##                                   ^

Make sure to replace `___` with the appropriate column name.

## Exercise 10

*Write your answer here.*

Feel free to add code chunks as needed. Don’t forget to label your code
chunk.

## Exercise 11

*Continue with the same structure as above.*

You’re doing great—keep going! Follow the same format and add your
response below.

## Additional Exercises

Almost there! Keep building on your work and follow the same structure
for any remaining exercises. Each exercise builds on the last, so take
your time and make sure your code is working as expected.
