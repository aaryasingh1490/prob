#experiment 18: Poisson Distribution

#plot spike chart for

#i)for poisson variable x with para 0.2, compute P(x>3)
Poisson=function(x,lam)
{
  p=(exp(-lam)*(lam^x))/factorial(x)
  return(p)
}

x=0:3
lam=0.2
a=Poisson(x,lam)
a
b=1-sum(a)
cat("P(x>3):",b,"\n")
plot(x,a,type="h",main=paste("spike plot for poisson distribution"))
points(x,a,pch=17)

#ii)for poisson variable x with para 2.5, compute P(x>8)
x=0:8
lam=2.5
a=Poisson(x,lam)
a
b=1-sum(a)
cat("P(x>8):",b,"\n")
plot(x,a,type="h",main=paste("spike plot for poisson distribution"))
points(x,a,pch=17)

#iii)for poisson variable x with para 5, compute P(x>12)
x=0:12
lam=5
a=Poisson(x,lam)
a
b=1-sum(a)
cat("P(x>8):",b,"\n")
plot(x,a,type="h",main=paste("spike plot for poisson distribution"))
points(x,a,pch=15)