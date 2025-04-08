#generate 100 random numbers between 20and 80 .if the vallue is less than 50 print the student is fail.greater than ou equal to 50 print the student is pass.



set.seed(2025)
a=sample(20:80,100,replace=TRUE)
a
y=vector()
y

for (i in 1:100)
{
  if(a[i]>=50)
  {
    y[i]=c("The student is passed")
  }
  else
  {
    y[i]=c("the student is failed")
    
  }
}
out=data.frame(marks=a,result=y)
out

#generate 200 random numbers between 30 and 100.also generate gender randomly.give the output by x<50=failed,x<60 second classs,between 70 to 80 first class,x>=80 distinction.
#combine using data fram or matrix and also seperate gender wise
set.seed(2025)
a=sample(30:100,200,replace=TRUE)
a
y=vector()
y

for (i in 1:length(a))
{ 
  if(x[i]<50)
  {
    y[i]=c("the student is failed")
    
  }
  else if(x[i]>=50 & x[i]<=60)
  {
    y[i]=c("The student passed with second class")
  }
  else if(x[i]>=60 & x[i]<=70)
  {
    y[i]=c("The student passed with first class")
  }
  else if(x[i]>=70 & x[i]<=80)
  {
    y[i]=c("The student passed with first class")
  }
  else if(x[i]>=80)
{
  y[i]=c("outstanding")
}

}
out=data.frame(marks=a,result=y)
out

g=sample(c("Male","Female"),200,replace=TRUE)
g

out=data.frame(marks=a,result=y,gender=g)
out
#in above question sepearate the data gender wise
p1=which(out[,3]=="Male")
p2=which(out[,3]=="Female")
Male= out[p1,]
Male
female= out[p2,]
female


#toss a coin 10 times, how many head will come up. show the results graphically
set.seed(2028)
coin=c("head","Tail")
a=sample(coin,10,replace=TRUE)
table(a)
df_total=data.frame(table(a))
df_prob= cbind(df_total,prop.table(df_total$Freq))
df_prob
names(df_prob)=c("Result","frequency","Probability")
df_prob
#graph
barplot(df_prob$frequency, names.arg=df_total$a, main="head and tail count of tossing a coin 10 times", col=c("red","blue"))
barplot(df_prob$Probability, names.arg = df_total$a,main="Probability of tossing a coin 10 times", col=c("red","blue"))

#plotting in same graph



#8. create toss coin function and plot the results
set.seed(2066)
tosscoin=function(numtoss)
{
  coin=c("H","T")
  result= sample(coin,numtoss,replace=T)
  dftotal= data.frame(table(result))
  return(dftotal)
}
n=100
coin=tosscoin(numtoss=n)
coin

#grahically

barplot(coin$Freq,names.arg = coin$result, main = paste("count of tossing the coin",n,"times"), col=c("red","blue"))
barplot(prop.table(coin$Freq), names.arg=coin$result, main=paste("probability of tossing a coin",n,"times"),col=c("red","blue"))  

par(mfrow=c(1,2))


#9 create a toss dice function and plot the results
set.seed(2022)
tossdice=function(numtoss)
{
  dice=c(1:6)
  result=sample(dice,numtoss,replace=TRUE)
  dftotal=data.frame(table(result))
  return(dftotal)
}
n=1000
dice=tossdice(n)
dice

barplot(dice$Freq,names.arg = dice$result, main=paste("count of tossing a dice",n,"times"),col=sample(657,6))

barplot(prop.table(dice$Freq),names.arg = dice$result,main=paste("probability of tossing a coin",n,"times"),col=sample(657,6))

