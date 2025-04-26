#a lot of 50 chickens---------- in the sampple
cn=function(n,x)
{
  c1=factorial(n)/(factorial(x)*(factorial(n-x)))
  return(c1)
}
N=50
n=3
m=6
x=0:3
fx=cn(m,x)*cn((N-m),(n-x))/cn(N,n)
pdf=data.frame(x,fx)
Fx=cumsum(fx)
cdf= data.frame(pdf,Fx)
cdf

#plotting
par(mfrow=c(2,1))
plot(x,fx,type="h",lwd=2, main="PDF of hypergeometric distribution")
points(x,fx,pch=16)
plot(x,Fx,type="s",lwd=2,main="CDF of hypergeometric disribution")
points(x,Fx,pch=16)


#ii) 
N=40
m=5
n=6
nn=15
#rhyper(nn,m,N-m,n)
set.seed(2026)
x=rhyper(nn,m,N-m,n)
x
