#Introduction to basic plots
library(dslabs)

# US gun muders by state for 2010
? murders  # description of the dataset
data(murders) # load the dataset

# Type of variables, observations, and distribution of the variables
skim(murders)
head (murders, 5)

