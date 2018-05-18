#Install dplyr and ggplot2
install.packages("dplyr")
library(dplyr)
install.packages("ggplot2")
library(ggplot2)
#Read Puget Sound Basin Data and rename "psbasin"
#
psbasin <- read.csv("PugetSoundBasin_WP_July16.csv")
psbasin <- PugetSoundBasin_WP_July16
#
#Filter the psbasin data to just include the July datasets
july_psbasin <- filter(psbasin,date =="7/11/16")
View(july_psbasin)
#Select pertinent columns for water quality
july_psbasin <- select(july_psbasin, depth..meters., salinity..psu., temperature..centigrade., chlorophyll.raw..ug.l., dissolved.oxygen..mg.l..raw, pH)
#
#Print modified data table with depth, salinity, temperature, chlorophyll, dissolved oxygen, and pH
print(july_psbasin)
#
#Rename and read Port Townsend data to reflect the same columns as the july_psbasin data
pt <- read.csv("PortTownsend_16")
pt <- PortTownsend_16
View(pt)
july_pt <- filter(pt, date == "7/6/16")
july_pt <- select(july_pt, depth..meters., salinity..psu., temperature..centigrade., chlorophyll.raw..ug.l., dissolved.oxygen..mg.l..raw, pH)
View (july_pt)
#Repeat same process as I dud with the Port Townsend and Puget Sound Basin datasets with the third dataset: Elliot Bay
View(ElliotBay_16)
eb <- read.csv("ElliotBay_16")
eb <- ElliotBay_16
View(eb)
july_eb <- filter(eb, date == "7/11/16")
july_eb <- select(july_eb, depth..meters., salinity..psu., temperature..centigrade., chlorophyll.raw..ug.l., dissolved.oxygen..mg.l..raw, pH)
View (july_eb)
#Combined the three datasets into one large dataset using the bind_rows function from dplyr, and renamed the three datasets to specify the locations and used .id to create a new location column.
full_data <- bind_rows(list(psbasin = july_psbasin, eb = july_eb, pt = july_pt), .id = "location")
