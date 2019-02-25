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

``` r
#Rearrange panel in wide format (variables per column)
panel <-panel_data %>% 
  arrange(country, date) 
```

``` r
head(panel, 5)
```

    ##   iso3c date iso2c     country NE.TRD.GNFS.ZS SP.POP.GROW SP.POP.TOTL
    ## 1   AFG 1960    AF Afghanistan       11.15703    1.816077     8996351
    ## 2   AFG 1961    AF Afghanistan       12.55061    1.876528     9166764
    ## 3   AFG 1962    AF Afghanistan       14.22764    1.934999     9345868
    ## 4   AFG 1963    AF Afghanistan       26.03551    1.992521     9533954
    ## 5   AFG 1964    AF Afghanistan       26.94445    2.049423     9731361
