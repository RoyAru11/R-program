log_exp_target=function(x){
  return(dexp(x,rate = 2, log = TRUE))
}
easyMCMC = function(log_target, nither, startval, proposalsd){
  x=rep(0,nither)
  x[1]=startval
  for(i in 2:nither){
    current_x = x[i-1]
    proposedx = rnorm(1,mean = current_x,sd=proposalsd)
    A = exp(log_target(proposedx) - log_target(current_x))
    if(runif(1)<A){
      x[i] = proposedx  #accept move with probability min(1,A)
    } else {
      x[i] = current_x  #otherwise "reject" move, and stay where we are
    }
  }
  return(x)
}
z1=easyMCMC(log_exp_target, 1000,3,1)
z2=easyMCMC(log_exp_target, 1000,1,1)
z3=easyMCMC(log_exp_target, 1000,5,1)
z4=easyMCMC(log_exp_target, 1000,10,3)

plot(z1,type="l")
lines(z2,col=2)
lines(z3,col=3)
lines(z4,col=4)

plot(log_exp_target(z1))
lines(log_exp_target(z2),col=2)
lines(log_exp_target(z3),col=3)

