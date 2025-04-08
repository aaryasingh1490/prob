#what is the probability that a five cards hand selected from a well shuffled pack of cards contains 3 aces
cn=function(n,x)
{
  c1=factorial(n)/(factorial(x)*factorial(n-x))
  return(c1)
}
pron=(cn(4,3)*cn(4,2))/cn(52,5)
pron

#a commitee of university teachers consist of -------- three readers and one lecture?
prob=(cn(3,2)*cn(5,3)*cn(2,1))/cn(10,6)
prob