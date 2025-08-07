# P(X<=70)
pnorm(q=70, mean=75, sd=5, lower.tail = T)
pnorm(q=70, mean=75, sd=5, lower.tail = F)
# P(Z>=1)
pnorm(q=1, mean = 0, sd=1, lower.tail = F)
# find Q1
qnorm(p=0.25, mean = 75, sd=5, lower.tail = T)

x<-seq(from=55, to=95, by=0.25)
x

dens<- dnorm(x, mean=75, sd=5)

plot(x,dens)
plot(x, dens, type="l", main = "X-Normal: Mean=75, SD=6", xlab="x", ylab="Probability density", las=1)
abline(v=75)
rand<-rnorm(n=40, mean = 75, sd=5)
rand 
hist(rand)
