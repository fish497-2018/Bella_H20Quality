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
