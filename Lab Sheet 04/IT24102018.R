setwd("C:\\Users\\it24102018\\Desktop\\Lab 04")
data <- read.table("DATA 4.txt", header = TRUE, sep = " ")
fix(data)
attach(data)

boxplot(X1, main="Boxplot - Attendance",outline=TRUE,outpch=8,horizontal=TRUE)
boxplot(X2, main="Boxplot - Salary",outline=TRUE,outpch=8,horizontal=TRUE)
boxplot(X3, main="Boxplot - Years",outline=TRUE,outpch=8,horizontal=TRUE)

hist(X1,y1ab="Frequency",x1ab="Team aAttendence" main="Histogram - Attendance")
hist(X2,y1ab="Frequency",x1ab="Team Salary" main="Histogram - Salary")
hist(X3,y1ab="Frequency",x1ab="Years" main="Histogram - Years")

stem(X1)
stem(X2)
stem(X3)

mean(X1)
mean(X2)
mean(X3)

median(X1)
median(X2)
median(X3)

sd(X1)
sd(X2)
sd(X3)




setwd("C:\\Users\\it24102018\\Desktop\\Lab 04")   
branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")
fix(branch_data)      
attach(branch_data)    



str(branch_data)




boxplot(Sales_X1,
        main = "Boxplot of Sales",
        ylab = "Sales",
        col = "lightblue",
        border = "darkblue")


summary(Advertising_X2)       
IQR(Advertising_X2)


find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  lower <- Q1 - 1.5 * IQR
  upper <- Q3 + 1.5 * IQR
  outliers <- x[x < lower | x > upper]
  return(outliers)
}

find_outliers(Years_X3)


