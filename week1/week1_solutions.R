# Exercises, week 1
# Type your code below the comments. You can add your own comments, too.
# Return this file to Moodle ('firstname_lastname_week1.R').

library(tidyverse)

# Exercise 1: 
# Create a vector named my_vector. It should have 7 numeric elements.
my_vector <- 1:7 # short for c(1,2,3,4,5,6,7)

# Print your vector.
my_vector

# Calculate the minimum, maximum, and median values of your vector.
min(my_vector) # or summary(my_vector)
max(my_vector)
median(my_vector)

# Print "The median value is XX"
my_median <- median(my_vector)
paste("The median value is", my_median) 


# Exercise 2: 
# Create another vector named my_vector_2. It should have the elements of my_vector divided by 2.
my_vector_2 <- my_vector/2

# Create a vector named my_words. It should have 7 character elements.
my_words <- c("red", "green", "blue", "yellow", "orange", "black", "pink")

# Combine my_vector and my_words into a data frame.
df <- data.frame(my_vector, my_words)

# Show the structure of the data frame.
str(df)

# Exercise 3:
# Use the head() function to print the first 3 rows of your data frame.
head(df, 3)

# Create a new variable to the data frame which has the values of my_vector_2 (remember to save the new variable to the data frame object).
df <- df %>% # tidyverse needs to be loaded for this
  mutate(new_var = my_vector_2)

# Use filter() to print rows of your data frame where values of my_vector are greater than the median value of my_vector.
df %>%
  filter(my_vector > my_median) # or filter(my_vector > median(my_vector))

# If your output is a weird-looking time series object, you're using the wrong filter function; you should be using dplyr::filter().


