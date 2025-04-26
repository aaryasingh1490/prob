# hypergeometric distribution
#i)
cn=function(n,x)
{
  c1=factorial(n)/(factorial(x)*(factorial(n-x)))
  return(c1)
}
N=9
m=4
n=6
x=3
fx=cn(m,x)*cn((N-m),(n-x))/cn(N,n)
fx

#ii)
cn=function(n,x)
{
  c1=factorial(n)/(factorial(x)*(factorial(n-x)))
  return(c1)
}
N=16
m=5
n=8
x=3:5
fx=cn(m,x)*cn((N-m),(n-x))/cn(N,n)
fx