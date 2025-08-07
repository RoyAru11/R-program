attach(lung)
names(lung)
class(LungCap)
boxplot(LungCap)

# Ho: mu<8
#one-sided 95% confidence interval for mu

t.test(LungCap, mu=8, alternative="less", conf.level = 0.95)
t.test(LungCap, mu=8, alt="two.sided", conf = 0.95)
test<-t.test(LungCap, mu=8, alt="two.sided", conf =  0.99)
test
attributes(test)
test$conf.int
