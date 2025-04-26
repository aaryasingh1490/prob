#experiment 16

cn=function(n,x)
{
  c1=factorial(n)/(factorial(x)*factorial(n-x))
  return(c1)
}
binomial=function(n,x,p)
{
  fx=cn(n,x)*p^x*(1-p)^(n-x)
  return(fx)
}

#i)consider 3 binomial distribution----------relative frequency distribution
#a)
n1=5
x1=0:5
p1=0.8
f1=binomial(n1,p1,x1)

n2=5
x2=0:5
p2=0.5
f2=binomial(n2,p2,x2)

n3=5
x3=0:5
p3=0.2
f3=binomial(n3,p3,x3)

par(mfrow=c(1,3))
plot(x1,f1,type="h", main=paste("binomial pmf for p1=",p1))
points(x1,f1,pch=16)

plot(x2,f2,type="h", main=paste("binomial pmf for p2=",p2))
points(x2,f2,pch=16)

plot(x3,f3,type="h", main=paste("binomial pmf for p3=",p3))
points(x3,f3,pch=16)


#b)
set.seed(4000)
r1=rbinom(100,n1,p1)
r1t=sort(unique(r1))
r1x=table(r1)
r1xt=r1t/length(r1)

set.seed(4000)
r2=rbinom(100,n2,p2)
r2t=sort(unique(r2))
r2x=table(r2)
r2xt=r2t/length(r2)

set.seed(4000)
r3=rbinom(100,n3,p3)
r3t=sort(unique(r3))
r3x=table(r3)
r3xt=r3t/length(r3)

par(mfrow=c(1,3))
plot(r1t,r1xt,type="h", main=paste("emperial pmf for p1=",p1))
points(r1t,r1xt,pch=16)

plot(r2t,r2xt,type="h", main=paste("emperial pmf for p2=",p2))
points(r2t,r2xt,pch=16)

plot(r3t,r3xt,type="h", main=paste("emperial pmf for p3=",p3))
points(r3t,r3xt,pch=16)

#ii)for n= 10 ,20, 50, 99 plot pmf of binomial distribution for p=0.3
n1=10
x1=0:10
p1=0.3
f1=binomial(n1,p1,x1)

n2=20
x2=0:20
p2=0.3
f2=binomial(n2,p2,x2)

n3=50
x3=0:50
p3=0.3
f3=binomial(n3,p3,x3)

n4=99
x4=0:99
p4=0.3
f4=binomial(n4,p4,x4)

par(mfrow=c(2,2))
plot(x1,f1,type="h", main=paste("binomial pmf for p1=",p1))
plot(x2,f2,type="h", main=paste("binomial pmf for p2=",p2))
plot(x3,f3,type="h", main=paste("binomial pmf for p3=",p3))
plot(x4,f4,type="h", main=paste("binomial pmf for p4=",p4))

points(x1,f1,pch=16)
points(x2,f2,pch=16)
points(x3,f3,pch=16)
points(x4,f4,pch=16)