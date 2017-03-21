#是否可以加薪

mydata <- read.csv(".//chapter7//employees.csv", header = TRUE, sep = ",")

#mydata <- read.table(".\\employees.csv", header =TRUE, sep = ",")

#mydata <- read.table(file.choose())

hist(mydata$received, breaks = 50)

sd(mydata$received)

summary(mydata$received)

#male
male <- mydata[mydata$gender == "M",]
#male 2008
male2008 <- male[male$year == 2008,]
#
aaaa <- aggregate(mydata["received"], by=list(mydata$gender,mydata$year),mean)
attach(mydata)
aaa <- mydata[received >= 6 & received <= 7,]

#
hist(mydata$received, breaks = 50)
counts <- table(gender=aaaa$Group.1, year=aaaa$Group.2)
counts
counts * aaaa$received
help(table)
counts <- counts * aaaa$received
barplot(
  counts,
  beside = TRUE
)


attach(mydata)
hist(
  received[year == 2008], breaks = 50
)

hist(
  received[gender == "F"], breaks = 50
)

hist(
  received[gender == "M"], breaks = 50
)


hist(
  received[negotiated == FALSE], breaks = 50
)

hist(
  received[negotiated == TRUE], breaks = 50
)

library(sm)
install.packages("sm")
library(sm)
attach(mydata)
sm.density.compare(received, gender)



employees <- read.csv("http://www.headfirstlabs.com/books/hfda/hfda_ch10_employees.csv", header = TRUE)
