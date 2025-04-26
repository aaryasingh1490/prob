#experiment 22
#i)
p1=pnorm(2,0,1)
cat("P(X<=2) is:",p1,'\n')

p2=pnorm(2.5-pnorm(0.84))
cat("P(0.84<=X<=2.5) is:",p2,'\n')

p3=1-pnorm(2)
cat("P(X>=2) is:",p3,'\n')

#ii)
c1=qnorm(01151)
cat("the c in P(z<=c)=0.1151 is:",c1,'\n')

c2=qnorm(0.8238)
cat("the c in P(z<=c)=0.8165 is:",c2,'\n')

c3=qnorm(0.1525+pnorm(1))
cat("the c in P(1<=z<=c)=0.1525 is:",c3,'\n')

c4=qnorm(0.8164/2+0.5)
cat("the c in P(-c<=z<=c)=0.8165 is:",c3,'\n')
