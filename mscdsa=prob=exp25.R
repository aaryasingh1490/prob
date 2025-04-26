#exp25
smean=function(x)
{
  ot=sum(x)/length(x)
  return(ot)
}
m1=smean(women[,1])
m1
m2=smean(women[,2])
m2
v1=var(women[,1])
v1
v2=var(women[,2])
v2

corr=function(x,y)
{
  nr=sum((x-mean(x))*(y-mean(y)))
  dr=sqrt(sum((x-mean(x))^2)*sum((y-mean(y))^2))
  op=nr/dr
  return(op)
}
corr(women[,1],women[,2])
plot(women[,1],women[,2],type='p',col="purple",main="scatter plot")