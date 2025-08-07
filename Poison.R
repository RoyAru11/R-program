#Poisson Distribution
# P(X=4)
dpois(x=4, lambda = 7)

# P(X=0) &...& P(X=4)
dpois(x=0:4, lambda = 7)

sum(dpois(x=0:4, lambda = 7))

# P(X<=4)
ppois(q=4, lambda = 7, lower.tail = T)

# P(X>=12)
ppois(q=12, lambda = 7, lower.tail = F)
  