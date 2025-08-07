attach(quakes)
quakes
require(graphics)
pairs(quakes, main = "Fiji Earthquakes, N = 1000")
data("quakes")
data1<-read.table(file.choose(),header=TRUE, sep = ",")
data1
boxplot(data1$richter)
names(earthquakes)
pairs(richter, main="Data")
hist(data1$richter)
boxplot(quakes$lat)
quantile(quakes$long, probs = seq(0,1,0.25))
quantile(quakes$long, probs = seq(0,1,0.90))
