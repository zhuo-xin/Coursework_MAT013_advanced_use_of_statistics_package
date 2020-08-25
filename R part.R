#question 1
impolite<-function(k){
  c<-c()
  i=2
  n=1
  c[1]<-1
  while (2**n<k) {
    c[i]<-2**n
    n<-n+1
    i<-i+1
  }
  return(c)
}
impolite(70)

impolitelist<-impolite(1000000)
polite<-function(k,filename) {
  i=1
  j=1
  politelist<-c()
  while (i<k) {
    if (i %in% impolitelist){
      i<-i+1
    }
    else{
      politelist[j]<-i
      i<-i+1
      j<-j+1
    }
  }
  total<-sum(politelist)
  z<-data.frame(politelist,total)
  write.csv(z,file=paste("E:\\",filename))
}
polite(70,"politenumbers.txt")

#question 3
Fibonacci<- function(x){   
  if (x<=2) {
  c<-c(1,1)                 #creat first two numbers in the sequence by hand
  }
  else{
    c<-c(1,1)
    for (i in 3:x){
    c[i]=c[i-1]+c[i-2]     # fibonacci sequency formula
    }
  }
  return(c[x])           #function that will return the nth Fibonacci number
}

Fibonacci(10)

Modified<-function(a,b,alpha,beta,x){
  if (x<=2){
    c<-c(a,b)            #creat first two numbers in the sequence by hand
  }
  else{
    c<-c(a,b)
    for (i in 3:x){
      c[i]=alpha*c[i-1]+beta*c[i-2]   # modified sequency formula
    }
  }
  return(c[x])       #function that will return the nth modified sequence number
}

Modified(a=4,b=2,alpha=1,beta=5,x=10)

Modified_2<-function(a,b,alpha,beta,x,k){
  d<-c()
  if (x<=2){
    c<-c(a,b)
  }
  else{
    c<-c(a,b)
    for (i in 3:x){
      c[i]=alpha*c[i-1]+beta*c[i-2]
    }
  }
  v<-1
  for (j in 1:length(c)){       #check each number in modified sequence
    if (c[j]<k){               # if it is less than number k
      d[v]<-c[j]               # then keep it in vector 'd'
      v<-v+1
    }
  }
  file_name=paste("E:\\modified_fib","a=",a,"b=",b,"alpha=",alpha,"beta=",beta,"last_position=",x,"less_than=",k,"2020-04-24.csv",sep = "_")
         #use paste function to combine the file name and file path
  final<-write.csv(d,file =file_name )    # output the file 
  return(final)
}

Modified_2(a=1,b=1,alpha=1,beta=1,x=10,k =33)

#question 4
seatbelts<-read.csv("seatbelts.csv")
hist(seatbelts$drivers)   #histogram demonstrating the number of drivers that died or seriously injured in an accident
hist(seatbelts$front)     #histograms for the people in the front seats of the car that died or seriously injured.
hist(seatbelts$rear)      #histograms for the people in the rear seats of the car that died or seriously injured.

a<-seatbelts[seatbelts$law==0,]
mean(a$front)  #the average number of people in the front seat that die or seriously injured when the law is not in effect 
b<-seatbelts[seatbelts$law==1,]
mean(b$front)   #the average number of people in the front seat that die or seriously injured when the law is in effect 

cor.test(seatbelts$front,seatbelts$rear)
summary(lm(seatbelts$front~seatbelts$rear))

#question 5
f<-function(x){
  result<-cos(x**4)/(1+abs(x))
  return(result)
}

P<-function(x){
  result<-dchisq(x,df=3)
  return(result)
}

GetSN <-function(N){
  Z<-rlnorm(N)
  SN<-1/N*sum(f(Z))
  return(SN)
}
GetSN(5000)

fortySN<-function(){
  c<-c()
  for (i in 1:40){
    c[i]<-GetSN(5000)
  }
  final<-write.csv(c,"E:\\40 evaluations of the function GetSN for N=5000.csv")
  return(final)
}
fortySN()


checkSN<-function(){
  c<-c()
  for (i in 1:40){
    c[i]<-GetSN(5000)
  }
  return(c)
}

shapiro.test(checkSN())
mean(checkSN())
var(checkSN())
