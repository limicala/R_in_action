#重复和循环
for(i in 1:10)
  print("Hello")

mydate <- function(type="long"){
  switch(type,
      long = format(Sys.Date(), "%A %B %d %Y"),
      short = format(Sys.Date(), "%m-%d-%y"),
      cat(type, "is not a true type")
    )
}

mydate("short")

cars <- mtcars[1:5, 1:4]
#转置
t(cars)
#整合数据，我理解的分组
options(digits = 3)
attach(mtcars)
aggdata <- aggregate(mtcars, by=list(cyl, gear), FUN=mean, na.rm=TRUE)

#融合
install.packages("reshape")

ID <- c(1,1,2,2)
Time <- c(1,2,1,2)
X1 <- c(5,3,6,2)
X2 <- c(6,5,1,4)
mydata <- data.frame(ID, Time, X1, X2)
library(reshape)
md <- melt(mydata, id=(c("ID", "Time")))

newdata <- cast(md, ID+variable~Time)
