num.iterations        <-7000
p.truth               <-0.4
num.samples.per.iter  <-100
samples               <-numeric(num.iterations)
for (iter in seq_len(num.iterations)) {
  samples[iter]<-mean(rbinom(num.samples.per.iter, 1, p.truth))
}
hist(samples, freq=F)
curve(dnorm(x, mean=p.truth,sd=sqrt((p.truth*(1-p.truth)/num.samples.per.iter)
                                    )),
      .25, .55, lwd=2, xlab = "", ylab = "", add = T)
