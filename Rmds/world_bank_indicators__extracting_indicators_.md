World Bank Indicators: the wbstats package
================

``` r
library(wbstats)
library(tidyverse)
```

    ## -- Attaching packages ------------------------------------------------------------ tidyverse 1.2.1 --

    ## v ggplot2 3.1.0     v purrr   0.2.5
    ## v tibble  2.0.1     v dplyr   0.7.8
    ## v tidyr   0.8.2     v stringr 1.3.1
    ## v readr   1.3.1     v forcats 0.3.0

    ## -- Conflicts --------------------------------------------------------------- tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
# Some indicators, population, Trade (%GDP)
panel_data<- wb(indicator = c("SP.POP.TOTL", "SP.POP.GROW", "NE.TRD.GNFS.ZS"), startdate = 1960, enddate = 2017, return_wide = TRUE)
head(panel_data,5)
```

    ##   iso3c date iso2c country NE.TRD.GNFS.ZS SP.POP.GROW SP.POP.TOTL
    ## 1   ABW 1960    AW   Aruba             NA   3.1480368       54211
    ## 2   ABW 1961    AW   Aruba             NA   2.2381439       55438
    ## 3   ABW 1962    AW   Aruba             NA   1.4096219       56225
    ## 4   ABW 1963    AW   Aruba             NA   0.8324526       56695
    ## 5   ABW 1964    AW   Aruba             NA   0.5926490       57032
