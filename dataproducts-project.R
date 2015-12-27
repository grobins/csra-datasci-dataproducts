require(slidify)

setwd("C:/gr/sources/csra-datasci-dataproducts")

author('project')


quakes_raw <- read.csv("C:/gr/sources/csra-datasci-dataproducts/app/data/quakes_raw.csv")

summary(quakes_raw)

quakes_raw <- subset(quakes_raw, eventtype == 'earthquake')

test <- quakes_raw[, c('public_id', 'origintime', 
                       'longitude', 'latitude', 'magnitude', 'depth')]
