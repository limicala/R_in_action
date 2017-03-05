
manager <- c(1,2,3,4,5)
date <- c("10/24/08", "10/28/08", "10/1/08", "10/12/08", "5/1/09")
country <- c("US", "US", "UK", "UK", "UK")
gender <- c("M","F","F","M","F")
age <- c(32,45,25,39,99)
q1 <- c(5,3,3,3,2)
q2 <- c(4,5,5,3,2)
q3 <- c(5,2,5,4,1)
q4 <- c(5,5,5,NA,2)
q5 <- c(5,5,2,NA,1)
leadership <- data.frame(manager, date, country, gender, age, 
                         q1,q2,q3,q4,q5, stringsAsFactors = FALSE)

leadership$age[leadership$age == 99] <- NA
#变量的重编码
leadership <- within(
  leadership, {
    agecat <- NA
    agecat[age > 75] <- "Elder"
    agecat[age >= 55 & age <= 75] <- "Middle Aged"
    agecat[age < 55] <- "Young"
  }
)
#变量的重命名
install.packages("reshape")
library(reshape)
leadership <- rename(leadership, c(manager="managerID", date="testDate"))
names(leadership)[2] <- "date"

#判断缺失值
is.na(leadership[,6:10])

#许多数值函数都会有是否忽略缺失值的计算
help(sum)

x <- c(1,2,NA,4)
y <- sum(x, na.rm = FALSE)
y
#清除有缺失值的行
newdate <- na.omit(leadership)

mydate <- as.Date(c("2007-06-22", "2004-02-13"))
#将字符串按照格式转成日期
myformat <- "%m/%d/%y"
leadership$date <- as.Date(leadership$date, myformat)

today <- Sys.Date()
format(today, format="%B %d %Y")
help(format)

today <- as.Date("1956-10-12")
format(today, format="%A")
#排序（默认是升序)
newdata <- leadership[order(-leadership$age),]
attach(leadership)
newdata <- leadership[order(gender, -age),]

total <- merge(leadership, newdata, by=c("managerID", "date"))
total
#选子集
myvars <- names(leadership) %in% c("q3", "q4")
leadership <- leadership[!myvars]

#筛选
newdata <- leadership[1:3,]
newdata <- leadership[which(leadership$gender == "M" & leadership$age > 30),]

#subset函数
newdata <- subset(leadership, age >= 35 | age < 24, select = c(q1,q2,q5))

#随机抽样(replace=False为不放回)
mysample <- leadership[sample(1:nrow(leadership), 3, replace = FALSE),]

#使用sql语句
install.packages("sqldf")
