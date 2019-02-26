# Load the population data from the World Bank

library(wbstats)

# Some indicators, population, Trade (%GDP), option return wide = TRUE

panel_data<- wb(indicator = c("BX.KLT.DINV.WD.GD.ZS", "NE.GDI.FTOT.ZS", "NY.GDP.PCAP.KD", "IT.MLT.MAIN.P2", "IT.CEL.SETS.P2", "IT.NET.USER.ZS", "IP.JRN.ARTC.SC", "IP.PAT.RESD", "SE.PRM.ENRR","SE.SEC.ENRR", "SE.TER.ENRR",  "SE.XPD.TOTL.GD.ZS", "SP.POP.TOTL", "SP.POP.GROW", "NE.TRD.GNFS.ZS", "NY.GDP.DEFL.KD.ZG", "FS.AST.PRVT.GD.ZS", "FR.INR.LNDP", "TM.TAX.MRCH.SM.AR.ZS"), startdate = 1960, enddate = 2017, return_wide = TRUE)
head(panel_data)

# change the names

names(panel_data) = c("iso3c", "year", "iso2c","country", "fdi", "irspread", "domcredit", "articles", "patents", "mobile", "telephone", "internet", "investment", "trade", "inflation", "gdppc", "primary", "secondary", "tertiary", "exp_educ", "pop_growth", "population", "tariff")

# list of countries
countrylist <- unique(panel_data$country)
n <-length(countrylist)

# list of years
yearlist <-unique(panel_data$year)
t <- length(yearlist)


# generate excel file

library(readxl)

write.xlsx(panel_data, file = "paneldata.xlsx")
