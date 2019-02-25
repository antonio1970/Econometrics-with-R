# Load the population data from the World Bank

library(wbstats)

# Some indicators, population, Trade (%GDP)
panel_data<- wb(indicator = c("SP.POP.TOTL", "SP.POP.GROW", "NE.TRD.GNFS.ZS"), startdate = 1960, enddate = 2017, return_wide = TRUE)
head(panel_data)

#Rearrange panel in wide format (variables per column)

panel <-panel_data %>% 
  arrange(country, date) 

  
head(panel, 5)