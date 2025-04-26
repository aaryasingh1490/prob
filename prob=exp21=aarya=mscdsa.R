#EXPERIMENT 21
set.seed(3009)
x=rnorm(20,5,2)
x
mean1=function(x)
{
  m1=sum(x)/length(x)
  return(m1)

}
cat("mean =",mean1(x),'\n')
cat("median =",median(x),'\n')
sd=function(y)
{
  n=length(y)
  ot=sum((y-sum(y)/n))^2/(n-1)
  ssd=sqrt(ot)
  return(ot)
}
cat("standard deviation =",sd(x),'\n')

#ii)
p1=pnorm(35,30,4)-pnorm(30,30,4)
cat("P(30,x,35) is:",p1,'\n')
a=pnorm(40,30,4)
result=1-a
cat("P(x>40) is:",result,'\n')
