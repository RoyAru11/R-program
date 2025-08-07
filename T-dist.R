help(pt)
#t-stat=2.3 df=25
#one-sided pvalue
#P(t>2.3)
pt(q=2.3, df=25, lower.tail = F)
# two-sided pvalue

pt(q=2.3, df=25, lower.tail = F)+pt(q=-2.3, df=25, lower.tail = T)0

2*pt(q=2.3, df=25, lower.tail = F)

# find t for 95% confidence
# value of t with 2.5% in each tail

qt(p=0.025, df=25, lower.tail = T)
