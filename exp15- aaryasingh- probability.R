#binomial distribution
#according to mendelian theory--------
#i) there will be no red flowered plants
cn=function(n,x)
{
  c1=factorial(n)/(factorial(x)*factorial(n-x))
  return(c1)
}
binom=function(n,x,p)
{
  b1=cn(n,x)*p^x*(1-p)^(n-x)
  return(b1)
}

#i) there will be no red flowered plants
n=5
p=0.25
x=0
binomial=binom(n,x,p)
binomial

#ii)there will be 4 or more red flowered plants
n=5
p=0.25
x=4:5
binomial2=binom(n,x,p)
binomial2
