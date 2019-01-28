data(mtcars)


library(skimr)
skim(mtcars)


summary(mtcars)
head(mtcars, 5)

# Let us create a histogram

hist(mtcars$mpg, col ='green', main = 'Miles per gallon')

# Compute correlation coefficient

cor.test(mtcars$mpg, mtcars$disp)


# Generate a boxplot for variable mpg
boxplot(mtcars$mpg, col = 'red')
