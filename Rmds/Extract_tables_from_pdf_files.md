Extract tables from pdf files
================

``` r
library(rJava)
library(tabulizer)
library(tabulizerjars)
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
library(xlsx)
```

``` r
table <- extract_tables("https://siteresources.worldbank.org/KFDLP/Resources/461197-1170257103854/KEI.pdf")
table[[1]]
```

    ##       [,1]                    [,2]   [,3]   [,4]   [,5]       
    ##  [1,] "Country"               ""     ""     ""     ""         
    ##  [2,] ""                      "2007" "KEI"  "1995" "Change"   
    ##  [3,] ""                      "Rank" "2007" "Rank" "from 1995"
    ##  [4,] ""                      ""     ""     ""     ""         
    ##  [5,] ""                      ""     ""     ""     ""         
    ##  [6,] ""                      ""     ""     ""     ""         
    ##  [7,] "Sweden"                "1"    "9.26" "9"    "8"        
    ##  [8,] "Denmark"               "2"    "9.22" "1"    "-1"       
    ##  [9,] "Norway"                "3"    "9.17" "4"    "1"        
    ## [10,] "Finland"               "4"    "9.07" "2"    "-2"       
    ## [11,] "Netherlands"           "5"    "9.02" "3"    "-2"       
    ## [12,] "Switzerland"           "6"    "8.99" "5"    "-1"       
    ## [13,] "Canada"                "7"    "8.94" "7"    "0"        
    ## [14,] "Australia"             "8"    "8.88" "11"   "3"        
    ## [15,] "United Kingdom"        "9"    "8.8"  "10"   "1"        
    ## [16,] "United States"         "10"   "8.8"  "6"    "-4"       
    ## [17,] "New Zealand"           "11"   "8.76" "8"    "-3"       
    ## [18,] "Iceland"               "12"   "8.71" "28"   "16"       
    ## [19,] "Austria"               "13"   "8.58" "13"   "0"        
    ## [20,] "Ireland"               "14"   "8.56" "18"   "4"        
    ## [21,] "Germany"               "15"   "8.54" "14"   "-1"       
    ## [22,] "Belgium"               "16"   "8.46" "12"   "-4"       
    ## [23,] "Japan"                 "17"   "8.46" "17"   "0"        
    ## [24,] "Luxembourg"            "18"   "8.39" "19"   "1"        
    ## [25,] "Taiwan, China"         "19"   "8.37" "15"   "-4"       
    ## [26,] "France"                "20"   "8.36" "16"   "-4"       
    ## [27,] "Hong Kong, China"      "21"   "8.19" "22"   "1"        
    ## [28,] "Israel"                "22"   "8.16" "20"   "-2"       
    ## [29,] "Slovenia"              "23"   "8.16" "27"   "4"        
    ## [30,] "Spain"                 "24"   "8.09" "21"   "-3"       
    ## [31,] "Estonia"               "25"   "8.07" "25"   "0"        
    ## [32,] "Italy"                 "26"   "7.98" "23"   "-3"       
    ## [33,] "Korea, Rep."           "27"   "7.74" "24"   "-3"       
    ## [34,] "Hungary"               "28"   "7.64" "32"   "4"        
    ## [35,] "Czech Republic"        "29"   "7.64" "29"   "0"        
    ## [36,] "Cyprus"                "30"   "7.63" "31"   "1"        
    ## [37,] "Lithuania"             "31"   "7.49" "43"   "12"       
    ## [38,] "Portugal"              "32"   "7.44" "26"   "-6"       
    ## [39,] "Latvia"                "33"   "7.37" "52"   "19"       
    ## [40,] "Greece"                "34"   "7.29" "30"   "-4"       
    ## [41,] "Poland"                "35"   "7.24" "38"   "3"        
    ## [42,] "Slovak Republic"       "36"   "7.22" "33"   "-3"       
    ## [43,] "Barbados"              "37"   "7.17" "44"   "7"        
    ## [44,] "Croatia"               "38"   "7.09" "42"   "4"        
    ## [45,] "Chile"                 "39"   "6.74" "37"   "-2"       
    ## [46,] "Malaysia"              "40"   "6.23" "53"   "13"       
    ## [47,] "Bulgaria"              "41"   "6.18" "47"   "6"        
    ## [48,] "Qatar"                 "42"   "6.17" "50"   "8"        
    ## [49,] "Uruguay"               "43"   "6.11" "35"   "-8"       
    ## [50,] "Dominica"              "44"   "6.06" "66"   "22"       
    ## [51,] "Costa Rica"            "45"   "6.02" "36"   "-9"       
    ## [52,] "Kuwait"                "46"   "6.01" "51"   "5"        
    ## [53,] "Russian Federation"    "47"   "5.94" "55"   "8"        
    ## [54,] "Romania"               "48"   "5.86" "56"   "8"        
    ## [55,] "United Arab Emirates"  "49"   "5.78" "40"   "-9"       
    ## [56,] "South Africa"          "50"   "5.64" "41"   "-9"       
    ## [57,] "Ukraine"               "51"   "5.58" "57"   "6"        
    ## [58,] "Bahrain"               "52"   "5.58" "34"   "-18"      
    ## [59,] "Turkey"                "53"   "5.56" "60"   "7"        
    ## [60,] "Brazil"                "54"   "5.5"  "58"   "4"        
    ## [61,] "Argentina"             "55"   "5.49" "39"   "-16"      
    ## [62,] "Thailand"              "56"   "5.41" "48"   "-8"       
    ## [63,] "Armenia"               "57"   "5.36" "70"   "13"       
    ## [64,] "Macedonia, FYR"        "58"   "5.36" "78"   "20"       
    ## [65,] "Mexico"                "59"   "5.35" "45"   "-14"      
    ## [66,] "Trinidad and Tobago"   "60"   "5.33" "46"   "-14"      
    ## [67,] "Belarus"               "61"   "5.33" "69"   "8"        
    ## [68,] "Jordan"                "62"   "5.19" "67"   "5"        
    ## [69,] "Oman"                  "63"   "5.12" "72"   "9"        
    ## [70,] "Mauritius"             "64"   "5.08" "63"   "-1"       
    ## [71,] "Jamaica"               "65"   "5.04" "59"   "-6"       
    ## [72,] "Lebanon"               "66"   "5.03" "54"   "-12"      
    ## [73,] "Panama"                "67"   "4.98" "49"   "-18"      
    ## [74,] "Serbia and Montenegro" "68"   "4.98" "62"   "-6"       
    ## [75,] "Saudi Arabia"          "69"   "4.76" "68"   "-1"       
    ## [76,] "Moldova"               "70"   "4.64" "84"   "14"       
    ##       [,6]                     [,7]   [,8]   [,9]   [,10]      
    ##  [1,] ""                       ""     ""     ""     ""         
    ##  [2,] ""                       ""     ""     ""     ""         
    ##  [3,] ""                       ""     ""     ""     ""         
    ##  [4,] "Country"                ""     ""     ""     ""         
    ##  [5,] ""                       "2007" "KEI"  "1995" "Change"   
    ##  [6,] ""                       "Rank" "2007" "Rank" "from 1995"
    ##  [7,] "Tunisia"                "71"   "4.52" "76"   "5"        
    ##  [8,] "Kazakhstan"             "72"   "4.5"  "75"   "3"        
    ##  [9,] "Philippines"            "73"   "4.48" "65"   "-8"       
    ## [10,] "Peru"                   "74"   "4.43" "73"   "-1"       
    ## [11,] "China"                  "75"   "4.42" "104"  "29"       
    ## [12,] "Georgia"                "76"   "4.4"  "74"   "-2"       
    ## [13,] "Colombia"               "77"   "4.32" "64"   "-13"      
    ## [14,] "Venezuela, RB"          "78"   "4.26" "71"   "-7"       
    ## [15,] "Mongolia"               "79"   "4.23" "98"   "19"       
    ## [16,] "Guyana"                 "80"   "4.21" "61"   "-19"      
    ## [17,] "Sri Lanka"              "81"   "4.03" "87"   "6"        
    ## [18,] "Namibia"                "82"   "3.94" "85"   "3"        
    ## [19,] "Egypt, Arab Rep."       "83"   "3.93" "81"   "-2"       
    ## [20,] "Botswana"               "84"   "3.92" "80"   "-4"       
    ## [21,] "El Salvador"            "85"   "3.88" "83"   "-2"       
    ## [22,] "Bolivia"                "86"   "3.78" "79"   "-7"       
    ## [23,] "Kyrgyz Rep."            "87"   "3.63" "86"   "-1"       
    ## [24,] "Dominican Republic"     "88"   "3.62" "89"   "1"        
    ## [25,] "Azerbaijan"             "89"   "3.56" "88"   "-1"       
    ## [26,] "Morocco"                "90"   "3.3"  "94"   "4"        
    ## [27,] "Indonesia"              "91"   "3.29" "92"   "1"        
    ## [28,] "Uzbekistan"             "92"   "3.27" "90"   "-2"       
    ## [29,] "Ecuador"                "93"   "3.26" "82"   "-11"      
    ## [30,] "Albania"                "94"   "3.22" "100"  "6"        
    ## [31,] "Paraguay"               "95"   "3.19" "77"   "-18"      
    ## [32,] "Honduras"               "96"   "3.15" "95"   "-1"       
    ## [33,] "Vietnam"                "97"   "3.1"  "109"  "12"       
    ## [34,] "Iran, Islamic Rep."     "98"   "3.09" "102"  "4"        
    ## [35,] "Algeria"                "99"   "3.07" "107"  "8"        
    ## [36,] "Nicaragua"              "100"  "3.01" "101"  "1"        
    ## [37,] "India"                  "101"  "3"    "97"   "-4"       
    ## [38,] "Cape Verde"             "102"  "2.88" "99"   "-3"       
    ## [39,] "Guatemala"              "103"  "2.83" "103"  "0"        
    ## [40,] "Syrian Arab Republic"   "104"  "2.82" "108"  "4"        
    ## [41,] "Swaziland"              "105"  "2.77" "91"   "-14"      
    ## [42,] "Kenya"                  "106"  "2.73" "106"  "0"        
    ## [43,] "Zimbabwe"               "107"  "2.48" "93"   "-14"      
    ## [44,] "Tajikistan"             "108"  "2.42" "105"  "-3"       
    ## [45,] "Senegal"                "109"  "2.38" "111"  "2"        
    ## [46,] "Madagascar"             "110"  "2.37" "122"  "12"       
    ## [47,] "Lesotho"                "111"  "2.23" "116"  "5"        
    ## [48,] "Uganda"                 "112"  "2.05" "124"  "12"       
    ## [49,] "Ghana"                  "113"  "1.99" "114"  "1"        
    ## [50,] "Pakistan"               "114"  "1.89" "110"  "-4"       
    ## [51,] "Nigeria"                "115"  "1.84" "112"  "-3"       
    ## [52,] "Tanzania"               "116"  "1.7"  "127"  "11"       
    ## [53,] "Mauritania"             "117"  "1.67" "126"  "9"        
    ## [54,] "Benin"                  "118"  "1.62" "115"  "-3"       
    ## [55,] "Yemen, Rep."            "119"  "1.62" "120"  "1"        
    ## [56,] "Cote D'Ivoire"          "120"  "1.54" "117"  "-3"       
    ## [57,] "Angola"                 "121"  "1.49" "137"  "16"       
    ## [58,] "Zambia"                 "122"  "1.47" "96"   "-26"      
    ## [59,] "Cameroon"               "123"  "1.46" "121"  "-2"       
    ## [60,] "Sudan"                  "124"  "1.39" "135"  "11"       
    ## [61,] "Myanmar"                "125"  "1.35" "129"  "4"        
    ## [62,] "Malawi"                 "126"  "1.25" "125"  "-1"       
    ## [63,] "Mali"                   "127"  "1.22" "118"  "-9"       
    ## [64,] "Mozambique"             "128"  "1.18" "131"  "3"        
    ## [65,] "Lao PDR"                "129"  "1.17" "136"  "7"        
    ## [66,] "Bangladesh"             "130"  "1.14" "133"  "3"        
    ## [67,] "Nepal"                  "131"  "1.13" "123"  "-8"       
    ## [68,] "Burkina Faso"           "132"  "1.08" "132"  "0"        
    ## [69,] "Eritrea"                "133"  "0.93" "119"  "-14"      
    ## [70,] "Rwanda"                 "134"  "0.84" "130"  "-4"       
    ## [71,] "Djibouti"               "135"  "0.79" "113"  "-22"      
    ## [72,] "Ethiopia"               "136"  "0.74" "134"  "-2"       
    ## [73,] "Sierra Leone"           "137"  "0.62" "128"  "-9"       
    ## [74,] "Singapore"              "138"  "n/a"  ""     "0"        
    ## [75,] "Bosnia and Herzegovina" "139"  "n/a"  ""     "0"        
    ## [76,] "Haiti"                  "140"  "n/a"  ""     "0"

``` r
tablaKEI <- data.frame(cbind(table[[1]][-c(1:6),1:3]))  # Select all rows but only the column with the KEI
names(tablaKEI)= c("Country", "Rank2007", "KEI2007")
```

``` r
tablaKEI %>%
  knitr::kable(caption = "Table 1, Ranking and Knowledge Economy Index, 2007")
```

| Country               | Rank2007 | KEI2007 |
|:----------------------|:---------|:--------|
| Sweden                | 1        | 9.26    |
| Denmark               | 2        | 9.22    |
| Norway                | 3        | 9.17    |
| Finland               | 4        | 9.07    |
| Netherlands           | 5        | 9.02    |
| Switzerland           | 6        | 8.99    |
| Canada                | 7        | 8.94    |
| Australia             | 8        | 8.88    |
| United Kingdom        | 9        | 8.8     |
| United States         | 10       | 8.8     |
| New Zealand           | 11       | 8.76    |
| Iceland               | 12       | 8.71    |
| Austria               | 13       | 8.58    |
| Ireland               | 14       | 8.56    |
| Germany               | 15       | 8.54    |
| Belgium               | 16       | 8.46    |
| Japan                 | 17       | 8.46    |
| Luxembourg            | 18       | 8.39    |
| Taiwan, China         | 19       | 8.37    |
| France                | 20       | 8.36    |
| Hong Kong, China      | 21       | 8.19    |
| Israel                | 22       | 8.16    |
| Slovenia              | 23       | 8.16    |
| Spain                 | 24       | 8.09    |
| Estonia               | 25       | 8.07    |
| Italy                 | 26       | 7.98    |
| Korea, Rep.           | 27       | 7.74    |
| Hungary               | 28       | 7.64    |
| Czech Republic        | 29       | 7.64    |
| Cyprus                | 30       | 7.63    |
| Lithuania             | 31       | 7.49    |
| Portugal              | 32       | 7.44    |
| Latvia                | 33       | 7.37    |
| Greece                | 34       | 7.29    |
| Poland                | 35       | 7.24    |
| Slovak Republic       | 36       | 7.22    |
| Barbados              | 37       | 7.17    |
| Croatia               | 38       | 7.09    |
| Chile                 | 39       | 6.74    |
| Malaysia              | 40       | 6.23    |
| Bulgaria              | 41       | 6.18    |
| Qatar                 | 42       | 6.17    |
| Uruguay               | 43       | 6.11    |
| Dominica              | 44       | 6.06    |
| Costa Rica            | 45       | 6.02    |
| Kuwait                | 46       | 6.01    |
| Russian Federation    | 47       | 5.94    |
| Romania               | 48       | 5.86    |
| United Arab Emirates  | 49       | 5.78    |
| South Africa          | 50       | 5.64    |
| Ukraine               | 51       | 5.58    |
| Bahrain               | 52       | 5.58    |
| Turkey                | 53       | 5.56    |
| Brazil                | 54       | 5.5     |
| Argentina             | 55       | 5.49    |
| Thailand              | 56       | 5.41    |
| Armenia               | 57       | 5.36    |
| Macedonia, FYR        | 58       | 5.36    |
| Mexico                | 59       | 5.35    |
| Trinidad and Tobago   | 60       | 5.33    |
| Belarus               | 61       | 5.33    |
| Jordan                | 62       | 5.19    |
| Oman                  | 63       | 5.12    |
| Mauritius             | 64       | 5.08    |
| Jamaica               | 65       | 5.04    |
| Lebanon               | 66       | 5.03    |
| Panama                | 67       | 4.98    |
| Serbia and Montenegro | 68       | 4.98    |
| Saudi Arabia          | 69       | 4.76    |
| Moldova               | 70       | 4.64    |
