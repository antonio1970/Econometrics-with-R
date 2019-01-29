#Introduction to basic plots
library(dslabs)

# US gun muders by state for 2010
? murders  # description of the dataset
data(murders) # load the dataset

# Type of variables, observations, and distribution of the variables
skim(murders)
head (murders, 5)


# Histogram of the murder rate
murders = mutate (murders, rate = total/population* 100000)
hist(murders$rate, col = 'green', main = 'Histogram of the murder rate')

murders$state[which.max(murders$rate)]
