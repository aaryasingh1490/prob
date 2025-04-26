#experiment 19
#i) the avergae number of accidents-------------------
Poisson=function(x,lam)
{
  p=(exp(-lam)*(lam^x))/factorial(x)
  return(p)
}
#a)no accident occurs on a day
x=0
lam=3
a=Poisson(x,lam)
a
b=sum(a)
b
plot(x,a,type="h",col="red",main=paste("spike plot for poisson distribution"))
points(x,a,pch=17)

#b)atmost two accidents occurs on a day
x=0:2
lam=3
a=Poisson(x,lam)
a
b=sum(a)
b
plot(x,a,type="h",col="blue",main=paste("spike plot for poisson distribution"))
points(x,a,pch=17)

#ii) suppose the number of defective screws-----
#a) exactly 2 defective screws
x=2
lam=2
a=Poisson(x,lam)
a
b=sum(a)
b
plot(x,a,type="h",col="brown",main=paste("spike plot for poisson distribution"))
points(x,a,pch=17)

#b)atleast one defective screw
x=0
lam=2
a=Poisson(x,lam)
a
b=1-sum(a)
b
plot(x,a,type="h",col="magenta",main=paste("spike plot for poisson distribution"))
points(x,a,pch=17)

#iii) consider n=20, p=0.1 and compute p(X=x) for x=0,1,2....n both binomial and poisson model
n=20
p=0.2
lam=n*p
x=0:20
a1=binomial(n,p,x)
a1
a2=Poisson(x,lam)
a2
b1=sum(a1)
cat("P(X=x) for binomial:",b1,"\n")
b2=sum(a2)
cat("P(X=x) for poisson:",b2,"\n")

