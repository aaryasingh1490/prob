#experiment 24
exponential=function(lam,x)
{
  ot=lam*exp(-lam*x)
  return(ot)
}

x=c(0.894,0.235,0.071,0.459,0.159,0.431,0.919,0.061,0.216,0.082,0.092,0.9,0.186,0.579,1.653,0.83,0.093,0.311,0.429,2.01,1.718,0.041,0.817,0.612,0.158,0.099,0.712,2.267,0.143,0.527,0.162,0.994,0.091,0.055,1.033,0.076,0.149,0.139,0.752,2.863,0.107,0.866,0.083,0.188,0.365,0.278,0.054)
x=sort(x)
smean=sum(x)/length(x)
y=exponential(1/smean,x)
hist(x,prob=T,col="pink",xlab="Inter Arrival Times",ylab="Density")
lines(x,y,type='o',col="blue",pch=16,lwd=2)
text(locator(1),col="red",'Histogram and',cex=0.8)
text(locator(1),col="green",'Exponential density with parametres 1.8',cex=0.4)

#ii)
x=rivers
x=sort(x)
smean=sum(x)/length(x)
smean
y=exponential(1/smean,x)
hist(x,prob=T,col="pink",xlab="Rivers",ylab="Density")
lines(x,y,type='o',col="blue",pch=16,lwd=2)
text(locator(1),col="red",'Histogram and',cex=0.8)
text(locator(1),col="green",'Exponential density with parametres 1.8',cex=0.4)