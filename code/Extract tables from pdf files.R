# Preliminaries, install the packages

install.packages('tabulizer')
install.packages('tabulizerjars')
install.packages("rJava")


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

table <- extract_tables("https://siteresources.worldbank.org/KFDLP/Resources/461197-1170257103854/KEI.pdf")
table
table[[1]] # Select the first element of the list where we find what we want to extract

# Use as dataframe, and remove the unnecesary rows, and select the 3 columns

tablaKEI <- data.frame(cbind(table[[1]][-c(1:6),1:3]))  # Select all rows but only the column with the KEI
names(tablaKEI)= c("Country", "Rank2007", "KEI2007")

# Put it in a nice way with kabble

tablaKEI %>%
  knitr::kable(caption = "Table 1, Ranking and Knowledge Economy Index, 2007")

# Export it as an Excel file

library(xlsx)
write.xlsx(tablaKEI, file="kei2007.xlsx", 
           sheetName="Knowledge economy 2007")