# learning ggnanimate

library(tidyverse)
library(gapminder)
library(ggplot2)
library(gganimate)


# Generate a scatter plot with life expectancy and gross domestic product per capita

gapminder %>% ggplot(aes(x = log(gdpPercap), y = lifeExp, col = continent)) +
  geom_point()


# Generate a regression line with geom_smooth

gapminder %>% ggplot(aes(x = log(gdpPercap), y = lifeExp)) +
  geom_point() + geom_smooth(lwd = 1, se = TRUE, method = 'lm') + ggtitle('GDP per capita vs. Life Expectancy')

# Let us take a look at the graph following the Economist's frame

library(ggthemes)
gapminder %>% ggplot(aes(x = log(gdpPercap), y = lifeExp)) +
  geom_point() + geom_smooth(lwd = 1, se = TRUE, method = 'lm') + theme_economist() + ggtitle('GDP per capita vs. Life Expectancy')
