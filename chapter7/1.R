vars <- c("mpg", "hp", "wt")
#使用aggregate分组计算描述性统计量
aggregate(mtcars[vars], by=list(am = mtcars$am), mean)

#使用by分组计算多个统计量
dstats <- function(x){c(n = length(x), mean = mean(x), sd = sd(x))}
by(mtcars[vars], mtcars$am, dstats)


library(reshape)

dfm <- melt(mtcars, id.vars = c("am","cyl"), measure.vars = vars)
cast(dfm, am + cyl + variable~., dstats)


mytable <- table(Arthritis$Improved)
mytable

prop.table(mytable)*100

mytable <- xtabs(~Treatment+Improved, data = Arthritis)
mytable

margin.table(mytable, 1)

prop.table(mytable)
addmargins(prop.table(mytable, 1), 2)

help(dim)
