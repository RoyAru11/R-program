install.packages("spatstat")
install.packages("sp")
library("spatstat")
library("sp")
load(url("https://zenodo.org/record/1308085/files/ConfPoints.gz"))
bpe_sch <- bpe[bpe$TYPEQU=="C104",]
bpe_pha <- bpe[bpe$TYPEQU=="D301",]
bpe_clo <- bpe[bpe$TYPEQU=="B302",]
bpe_doc <- bpe[bpe$TYPEQU=="D201",]
par(mfrow=c(2,2), mar=c(2,2,2,2))
plot(carte, main="Schools") ; points(bpe_sch[,2:3])
plot(carte, main="Pharmacies") ; points(bpe_pha[,2:3])
plot(carte, main="Clothing stores") ; points(bpe_clo[,2:3])
plot(carte, main="Doctors") ; points(bpe_doc[,2:3])
par(mfrow=c(1,1))
