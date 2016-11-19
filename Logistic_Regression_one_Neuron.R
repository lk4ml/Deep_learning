
feature<-matrix(runif(100,0,1),ncol=2,byrow=TRUE)
head(feature)

weight<-c(runif(2,0,1))

# matrix(multiplication)

z<-feature%*%weight
head(z)


logit<-function(z)
  {
  alpha=(1/(1+exp(-z)))
  return(alpha)
}

classifier<-ifelse(logit(z)>.5,1,0)

## 