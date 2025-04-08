#obtain probability distribution of x--------------verfiy the frequency interpretation of probability
set.seed(3000)
p=1/6
n1=100
d1=sample(1:6,n1,rep=T)
d1
f1=table(d1)
f1
p1=f1/n1
paste("random samples of size 100 is:",p1)

set.seed(3000)
p=1/6
n2=200
d2=sample(1:6,n2,rep=T)
d2
f2=table(d2)
f2
p2=f2/n2
paste("random samples of size 200 is:",p2)

set.seed(3000)
p=1/6
n3=300
d3=sample(1:6,n3,rep=T)
d3
f3=table(d3)
f3
p3=f3/n3
paste("random samples of size 500 is:",p3)