#experiment 17
#the following------------------------plot the expected frequencies against observed frequencies--- model

x=0:10
n=max(x)
f=c(6,20,28,12,8,6,0,0,0,0,0)
N=sum(f)
smean=sum(f*x)/N
p=smean/n
px=dbinom(x,n,p)
px=round(px,4)
ef=px*N
fr.dist=data.frame(x,f,px,ef)
fr.dist

par(mfrow=c(1,1))
plot(f,ef,type='p',pch=16,xlab="observed frequency",ylab="expected frequency", main="fitting of binomial distribution")
abline(0,1)