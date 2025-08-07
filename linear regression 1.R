rbind(1:10, seq(2,20,2), c(1,5,3,7,3,6,8,4,3,8))
cbind(1:10, seq(2,20,2), c(1,5,3,7,3,6,8,4,3,8))

tab1 = rbind(1:3, 4:6,7:9)
tab2 = cbind(1:3,4:6,7:9)
tab1
tab2
tab1+tab2
rnorm(n=10, mean=0, sd=1)
rnorm(10,0,1)
rnorm(10)
round(x=rnorm(10), digits=4)
set.seed(191)
rnorm(3)
rbinom(10,25,1/3)
######################
usa = read.csv(file.choose())
print(paste("The dataset has", nrow(usa),"rows."))
print(paste("The dataset has", ncol(usa),"columns."))
head(usa)
usa$state
length(usa$state)
print(paste("mean population:", round(median(usa$TOT_POP))))


hist(usa$TOT_POP)
hist(log10(usa$TOT_POP))
summary(usa$TOT_POP)

print(paste("The maximal population is in row", which.max(usa$TOT_POP)))
usa[c(which.min(usa$TOT_POP),which.max(usa$TOT_POP)),]

usa[ which(usa$TOT_POP<500),]

plot(
  usa$TOT_POP,usa$MedIncome,
  xlab = "population",ylab = "Median Income",
  las=1,log = 'xy'
)

print(
  paste(
    "The correlation is",
    round(cor(log10(usa$TOT_POP),
              log10(usa$MedIncome)),digits = 4)
  )
)

# Fit a linear model
md.linear=lm(
  log10(MedIncome)~log10(TOT_POP),
  data = usa
)
summary(md.linear)
#Get a sequence of 200 points for the x-axis
tt=seq(
  min(usa$TOT_POP),max(usa$TOT_POP),
  length.out=200
)
# predict an income value at each of these points
# predicts in log scale
prd=predict(
  md.linear,newdata = data.frame(TOT_POP=tt)
  )
lines(tt,10^prd,col='blue',lwd=4)

# See
library(MASS)
library(lmtest)
library(car)








