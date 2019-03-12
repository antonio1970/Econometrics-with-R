# Extract table from article World Development


## Check R version (32-64 bits)
version  # Check version of R
Sys.setenv(JAVA_HOME="C:/Program Files/Java/jdk-11.0.2/")  # Set up the correct path for Java, and modify the path accordingly

##load the packages

library(rJava)
library(tabulizer)
library(tabulizerjars)
library(tidyverse)
library(xlsx)

# Use the command extract_tables from the tabulizer package

table <- extract_tables("http://www.danielearchibugi.org/downloads/papers/2017/11/ArCo.pdf", pages = 9:12)
table

# Some cleaning removing unnecessary columns

table[[1]] <- table[[1]][,-c(5:6)]
table[[2]] <- table[[2]][,-c(5:6)]
table[[3]]  <- table[[3]][,-c(5:6)]
table[[4]]  <- table[[4]][,-c(5:6)]

# Generate dataframe with the list

tableARCO <- data.frame(rbind(table[[1]], table[[2]], table[[3]], table[[4]]))
names(tableARCO)= c("Ranking", "Country", "ArCO20007", "ArCO1990")

tableARCO[-c(1:2),]
# Put it in a nice way with kabble

tableARCO %>%
  knitr::kable(caption = "Table 1, ArCO 1900-2000. World Development, 2004")