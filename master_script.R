data(mtcars)


library(skimr)
skim(mtcars)


summary(mtcars)


head(mtcars, 5)

# Let us create a histogram

hist(mtcars$mpg, col ='green')

cor.test(mtcars$mpg, mtcars$disp)
