Introduction to ggplot with regression
================
Antonio Rodriguez Andres
28 de enero de 2019

``` r
library(tidyverse)
```

    ## -- Attaching packages ---------------------------------------- tidyverse 1.2.1 --

    ## v ggplot2 3.1.0     v purrr   0.2.5
    ## v tibble  2.0.1     v dplyr   0.7.8
    ## v tidyr   0.8.2     v stringr 1.3.1
    ## v readr   1.3.1     v forcats 0.3.0

    ## Warning: package 'tibble' was built under R version 3.5.2

    ## Warning: package 'readr' was built under R version 3.5.2

    ## -- Conflicts ------------------------------------------- tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
library(gapminder)
library(ggplot2)
library(ggthemes)
```

    ## Warning: package 'ggthemes' was built under R version 3.5.2

``` r
gapminder %>% ggplot(aes(x = log(gdpPercap), y = lifeExp, col = continent)) +
  geom_point()
```

![](Introduction_to_ggplot_with_regression_files/figure-markdown_github/scatter%20plot%20GDP%20vs.%20life%20Expectancy-1.png)

``` r
gapminder %>% ggplot(aes(x = log(gdpPercap), y = lifeExp)) +
  geom_point() + geom_smooth(lwd = 1, se = TRUE, method = 'lm') + theme_economist() + ggtitle('GDP per capita vs. Life Expectancy')
```

![](Introduction_to_ggplot_with_regression_files/figure-markdown_github/similar%20to%20the%20Economist-1.png)
