library(vcd)
counts <- table(Arthritis$Improved)
counts

#条形图->画分布
barplot(
  counts,
  main = "Simple Bar Plot",
  xlab = "Improvement", ylab = "Frequency"
)
#水平条形图
barplot(
  counts,
  main = "Horizontal Bar Plot",
  xlab = "Improvement", ylab = "Frequency",
  horiz = TRUE
)

counts <- table(Arthritis$Improved, Arthritis$Treatment)
counts
#堆砌条形图
barplot(
  counts,
  main = "Stacked Bar Plot",
  xlab = "Treatment", ylab = "Frequency",
  col = c("red", "yellow", "green"),
  legend = rownames(counts)
)
#分组条形图
barplot(
  counts,
  main = "Stacked Bar Plot",
  xlab = "Treatment", ylab = "Frequency",
  col = c("red", "yellow", "green"),
  legend = rownames(counts),
  beside = TRUE
)

states = data.frame(state.region, state.x77)
means = aggregate(states$Illiteracy, by=list(state.region), FUN = mean)
means
#均值条形图
means <- means[order(means$x),]
barplot(means$x, names.arg = means$Group.1)

#条形图的微调
par(mar=c(5,8,4,2))
par(las = 2)
counts <- table(Arthritis$Improved)
barplot(
  counts,
  main = "Treatment Outcome",
  horiz = TRUE,
  cex.names = 0.8,
  names.arg = c("No Improvement", "Some Improvement", "Marked Improvement")
)
#棘状图
library(vcd)
attach(Arthritis)
counts <- table(Treatment, Improved)
spine(counts, main = "Spinogram Example")


#饼状图
par(mfrow = c(2,2))
slices <- c(10, 12, 4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
pie(slices, labels = lbls, main = "Simple Pie Chart")

par(mfrow=c(1,1))
#直方图
hist(mtcars$mpg)

hist(
  mtcars$mpg,
  breaks = 12,#组数
  col = "red",
  xlab = "Miles Per Gallon",
  main = "Colored histogram with 12 bins"
)

#核密度图
d <- density(mtcars$mpg)
plot(d, main = "aaa")
polygon(d, col = "red", border = "blue")
rug(mtcars$mpg, col = "brown")

#箱线图
boxplot(mtcars$mpg, main="aa", ylab="yyyy")
#并列箱线图
boxplot(
  mpg ~ cyl,
  data=mtcars,
  varwidth=TRUE
)

#点图
dotchart(
  mtcars$mpg,
  labels = row.names(mtcars),
  cex = .7
)
aa <- mtcars["mpg"]


x <- mtcars[order(mtcars$mpg),]
x$cyl <- factor(x$cyl)
x$color[x$cyl == 4] <- "red"
x$color[x$cyl == 6] <- "blue"
x$color[x$cyl == 8] <- "darkgreen"
dotchart(
  x$mpg,
  labels = row.names(x),
  cex = .7,
  groups = x$cyl,
  gcolor = x$color,
  pch = 19
)
