# Set working directory (you’ll change this path)
setwd("C:\\Users\\it24102018\\Desktop\\it24102018lab08")

data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)  
attach(data)

##Question 01 - Calculate population mean and population standard deviation
popmean<-mean(Weight.kg.)
popsd<-sd(Weight.kg.)

##Question 02 - Get 25 random samples of size 6, with replacement and calculate sample mean and sample standard deviation for each sample.

samples<-c()
n<-c()


for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}


colnames(samples)=n



s.means<-apply(samples,2,mean)
s.sds<-apply(samples,2,sd)

##Question 03 - Calculate mean and standard deviation of the Sample Means.
mean_of_means<-mean(s.means)
sd_of_means<-sd(s.means)


popmean
mean_of_means

popsd
sd_of_means
theoretical_sd<-popsd/sqrt(6)
theoretical_sd




