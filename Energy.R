library(tidyverse)
library(data.table)
library(lubridate)

recs <- fread("residential-energy-consumption-survey/recs2009_public.csv")
glimpse(recs)

public <- fread("residential-energy-consumption-survey/public_layout.csv")


ggplot(recs, aes(KWH,DOLLAREL,alpha=0.01))+geom_point()+geom_smooth()

#######################
energydata <- fread("KAG_energydata_complete.csv")
energydata$date <- ymd_hms(energydata$date)
energydata$Month <- month(energydata$date, label = TRUE)
#Lets add Year
energydata$Year <- year(energydata$date)
