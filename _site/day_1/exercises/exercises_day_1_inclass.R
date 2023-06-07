# Day 1 Exercises

# Homework review ----

temp <- c(40, 38, 64, 28, 42, 57)
city <- c("L", "Sh", "Sy", "B", "MC", "J")
temp <- setNames(temp, city)
temp[4]
temp["B"]
sum(temp[3], temp[5], temp[6])
sum(temp[c(3, 5, 6)])
# sum(temp[c(4:6)])
my_cities <- c("Sy", "MC", "J")
sum(temp[my_cities])
my_cities2 <- temp[c(3, 5, 6)] 
# my_cities2 <- temp[3, 5, 6] 
# Error in temp[3, 5, 6] : incorrect number of dimensions
sum(my_cities2)

even_numbers <- seq(from = 2, to = 74, by = 2)
seq(2, 74, 2)

my_vec <- seq(4, 79.999, by = 2/3)
length(my_vec)

my_vec2 <- seq(4, 79.333333, length.out = 114)
my_vec2

my_vec3 <- seq(4, by = 2/3, length.out = 114)
my_vec3

my_vec4 <- seq(4, 80, by = 2/3)
my_vec4 <- my_vec4[my_vec4 < 80]

my_vec5 <- seq(4, by = 2/3, along.with = my_vec4)
my_vec5

# Intro to the course ----
library(tidyverse)
# what do the messages mean?


## Exercises 1 ----

# one of many ways to read in data
nlsy <- read_rds("https://github.com/louisahsmith/id543/raw/main/data/nlsy.rds")

# how many rows and columns?
# how many ways can you answer that question?
as_tibble(nlsy)
nlsy
nrow(nlsy)
ncol(nlsy)

# pull off the sex_cat variable
nlsy$sex_cat
nlsy[,"sex_cat"]
# then the sex variable
nlsy$sex
nlsy[,"sex"]
# what is the difference?

# how many weekday hours of sleep and weekend hours of sleep does 
# person id 96 get?
nlsy
nlsy$sleep_wkdy[12]
nlsy$sleep_wknd[12]

# create a dataframe or tibble with the answers to those questions 
# for yourself and at least 2 of your classmates

slp <- tribble(
  ~name, ~sleep_wkdy, ~sleep_wknd,
  "Louisa", 6, 8,
  "Ollie", 18, 16
)

# what is the mean hours of sleep on weekdays in the dataset? 
# among you & your classmates?

mean(slp$sleep_wkdy)
mean(slp$sleep_wknd)

mean(nlsy$sleep_wkdy)
mean(nlsy$sleep_wknd)

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

ggplot(nlsy, aes(x = sleep_wknd, y = sleep_wkdy, 
                 col = sex_cat)) + 
  geom_point() +
  scale_color_manual(values = c("blue", "red"))


ggplot(nlsy, aes(x = sleep_wknd, y = sleep_wkdy, 
                 color = race_eth_cat)) + 
  geom_point() +
  scale
  scale_color_manual(values = c("blue", "red", "yellow"))

# Play around with changing the colors.



# Type scale_color into your R console and press tab to see the autocomplete.
# Look through the options and find one we haven’t seen. that works with your plot.



## Exercises 3 ----

# Make a histogram showing the distribution of income in this data.
# Facet it by a variable(s) of your choice


# Make the bars of the histogram orange

ggplot(nlsy, aes(income)) +
    geom_histogram(color = )
  
  
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
?fct_inorder()

# creating a new variable, combine the two lower categories of slp_cat_wkdy into 
# one called "Not enough"


# creating a new variable, lump the levels of slp_cat_wkdy into the 2 largest
# with the third into a level called "other"
