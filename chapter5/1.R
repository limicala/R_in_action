#高级数据管理

x <- c(1,2,3,4,5,6,7,8)
mean <- mean(x)
sd <- sd(x)
#数学函数
#统计函数
#概率函数

x <- pretty(c(-3,3), 30)
y <- dnorm(x)
x
plot(x,y,
  type = "l",
  xlab = "NormalDevicate",
  ylab = "Density",
  yaxs = "i"
)
#生成0到1的随机数
runif()
#生成多元正态数据
library(MASS)

options(digits = 3)
set.seed(1234)

mean <- c(230.7, 146.7, 3.6)
sigma <- matrix(c(15360.8, 6721.2,-47.1,
                  6721.2,4700.9,-16.5,
                  -47.1,-16.5,0.3), nrow = 3, ncol = 3)
#蒙特卡洛方法随机生成数据
mydata <- mvrnorm(3, mean, sigma)
mydata <- as.data.frame(mydata)
names(mydata) <- c("y", "x1", "x2")
dim(mydata)
aa <- mydata[["y"]]

mean(aa)
aa <- aa - mean(aa)
aa <- aa^2
aa <- sum(aa) / 499
aa
#将函数应用于矩阵和数据框
a <- 5
sqrt(a)
b <- c(1.212, 2.312,5.4)
round(b)
c <- matrix(runif(12), nrow = 4)
c
#apply 应用在行或列的函数
#rnorm(n)默认生成n个符合正态分布的随机数
#func可以自定义，本例使用mean函数
mydata <- matrix(rnorm(30), nrow = 6)

apply(mydata, 1 , mean)
