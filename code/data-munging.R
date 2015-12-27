require(slidify)



quakes_raw <- read.csv("data/quakes_raw.csv")

summary(quakes_raw)

quakes_raw <- subset(quakes_raw, eventtype == 'earthquake')
