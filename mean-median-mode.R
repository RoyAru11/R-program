attach(lung)
names(lung)
summary(LungCap)
table(Smoke)
table(Smoke)/725
length(Smoke)
table(Smoke)/length(Smoke)
table(Smoke,Gender)

mean(LungCap, trim=0.10)
median(LungCap)
var(LungCap)
sd(LungCap)
sqrt(var(LungCap))
sd(LungCap)^2

min(LungCap)
max(LungCap)
range(LungCap)
quantile(LungCap, probs=0.90)

quantile(LungCap, probs=c(0.20,0.5,0.9,1))

sum(LungCap)/725
cor(LungCap, Age, method = "spearman")
var(LungCap, Age)
summary(LungCap)
summary(Smoke)
summary(lung)
