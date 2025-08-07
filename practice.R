x <-c(-10,10,2,5,1,100,-99,12,40,3)
x
sort(x)
quantile(x, probs = seq(0,1,0.25))
quantile(x)
quantile(x, probs = seq(0,1,0.50))
quantile(x, probs = seq(0,1,0.90))
