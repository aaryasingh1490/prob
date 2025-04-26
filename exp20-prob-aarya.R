#experiment 20
#atmospheric dust=------- adequncy of the fitted model

Poisson=function(x,lam)
{
  p=(exp(-lam)*(lam^x))/factorial(x)
  return(p)
}

x=0:5
f=c(13,24,30,18,7,8)
lam=sum(f*x)/sum(f)
px=Poisson(x,lam)
ef=px*(sum(f))
da=data.frame(x,f,ef)
da
plot(f,ef,type="p",col="green",main=paste("fitting of poisoon distribution"),xlab="observed frequency",ylab="expected frequency")
abline(0,1)