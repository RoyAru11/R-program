# P(X=3)
dbinom(x=3, size=20, prob=1/6)

# P(X=0) & P(X=1) &...& P(X=3)
dbinom(x=0:3, size=20, prob=1/6)

# P(X<=3)
sum(dbinom(x=0:3, size=20, prob=1/6))

# P(X<=3) probability distribution function
pbinom(q=3, size = 20, prob = 1/6, lower.tail = T)
rbinom