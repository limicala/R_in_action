#数据管理
mydata <- data.frame(
  x1 = c(2,4,6,4),
  x2 = c(3,4,2,8)
)
mydata$sumx <- mydata$x1 + mydata$x2
mydata$meanx <- (mydata$x1 + mydata$x2) / 2
#船检新字段
mydata <- transform(
  mydata,
  sumx = x1 + x2,
  meanx = (x1 + x2) / 2
)

mydata
