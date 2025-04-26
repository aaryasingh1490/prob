#experiment 23
midx=seq(17.05,86.35,7.7)
midx
f=c(2,10,16,37,43,39,29,13,06,05)
m=sum(f*midx)/sum(f)
ssd=sqrt((sum(f*(midx-m)^2)/sum(f)))
l=c(13.2,20.9,28.6,36.3,44,51.7,59.4,67.1,74.8,82.5)
l=c(l,90.2)
cdf=pnorm(l,m,ssd)
cdf=c(0,cdf,1)
pcf=diff(cdf)
f=c(0,f,4)
ef=round(pcf*sum(f),4)
fr=data.frame(f,ef)
fr
plot(f,ef,type="p",col= "red",pch=16, main="fitting of normal distribution",xlab="observed frequency", ylab="expected frequency")
abline(0,1)