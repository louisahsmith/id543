# Day 1 Exercises

# Intro to the course ----
library(tidyverse)
# what do the messages mean?


## Exercises 1 ----

# one of many ways to read in data
nlsy <- read_rds("https://github.com/louisahsmith/id543/raw/main/data/nlsy.rds")


# how many rows and columns?
# how many ways can you answer that question?


# pull off the sex_cat variable
# then the sex variable
# what is the difference?


# how many weekday hours of sleep and weekend hours of sleep does 
# person id 96 get?


# create a dataframe or tibble with the answers to those questions 
# for yourself and at least 2 of your classmates


# what is the mean hours of sleep on weekdays in the dataset? 
# among you & your classmates?




# Intro to ggplot ----
## Exercises 2 ----

# do you need to load the tidyverse package again?
# do you need to read in the data again?

# go to Session -> Restart R
# how about now?

# rerun your entire script, top to bottom
# it's always good practice to do so instead of jumping around


# Make a scatterplot showing the relationship between sleep 
# on weekdays and on weekends.

ggplot(nlsy)


# Play around with changing the colors.


# Type scale_color into your R console and press tab to see the autocomplete.
# Look through the options and find one we haven’t seen. that works with your plot.



## Exercises 3 ----

# Make a histogram showing the distribution of income in this data.
# Facet it by a variable(s) of your choice


# Make the bars of the histogram orange


# Make the bars of the histogram differ according to the variable
# you faceted by


# Make the bars of the histogram differ according to a different variable
# from the one you faceted by. What do you think about this figure?



## Exercises 4 ----

# See how close you can get to the plot in the slides
# you will have to do some googling/look through documentation and other resources!



# Factor variables ----

# run this code to add a categorical sleep variable to your data
nlsy <- mutate(nlsy, slp_cat_wkdy = 
                 case_when(
                   sleep_wkdy < 5 ~ "little",
                   sleep_wkdy < 7 ~ "some",
                   sleep_wkdy < 9 ~ "ideal",
                   sleep_wkdy < 12 ~ "lots"
                 )
)

## Exercises 5 ----

# creating a new variable, rename the levels of slp_cat_wkdy to be capitalized


# creating a new variable, combine the two lower categories of slp_cat_wkdy into 
# one called "Not enough"


# creating a new variable, lump the levels of slp_cat_wkdy into the 2 largest
# with the third into a level called "other"
