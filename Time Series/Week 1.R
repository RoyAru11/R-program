y <- c(1,2,3,4,5,6,7,8)
x<- c(1,2,2,4)
x*y
x %*% t(x)
t(x) %*% x

z1 <- matrix(y,2)
z1
z2 <- matrix(y,2,byrow=TRUE)
z2

x[2:4]
x[-2] #drop an element 

y <-c(1,3)
x[y]
x[-y]
#combine two limits
x <-c(x,y)
x
rev(x)
