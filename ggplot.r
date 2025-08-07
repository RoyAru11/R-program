library(ggplot2)
data("diamonds")
diamonds_subset <-diamonds[seq(1,50000),by =100]
ggplot(data = diamonds_subset, aes(x=carat,y=price,colour =  cut))+geom_point()+
  facet_wrap(~cut, nrow = 2,scales = "free_y")
# ggarrange

p1 <-ggplot(data = diamonds_subset, aes(x=carat,y=price,colour =  cut))+geom_point()+
  facet_wrap(~cut, nrow = 2,scale = "free_y")
p2 <-ggplot(data = diamonds_subset, aes(x=carat,y=price,colour =  cut))+geom_boxplot()+
  facet_wrap(~cut, nrow = 1)
p1
p2
library(ggpubr)
ggarrange(p1,p2,nrow=2)
