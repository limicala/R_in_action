#画图

dose <- c(20, 30, 40, 45, 60)

drugA <- c(16, 18, 20, 10, 60)

drugB <- c(15, 18, 25, 31, 40)

#type为b则同时绘制电和线
plot(dose, drugA, type = "b")

#使用par()方法来修改图表
opar <- par(no.readonly = TRUE) #复制当前设置
#pch设置点的符号
#cex指定符号的大小
#lty指定线条类型
#lwd指定线条宽度
par(lty = 2) #设为虚线
par(pch = 17) #设为三角形点

plot(dose, drugA, type = "b")
par(opar)
?plot

plot(dose, drugB, type = "b", lty=3, lwd = 3, pch = 15, cex = 2)
#指定颜色
n <- 10
mycolors <- rainbow(n)
pie(rep(1,n), labels = mycolors, col = mycolors)
mygrays <- gray(0:n/n)
pie(rep(1,n), labels = mygrays, col = mygrays)

#设置颜色col
#设置文本属性（坐标轴，标题）cex.*
#设置字体等 font.*
#设置图形尺寸 pin  mai mar

opar <- par(no.readonly = TRUE)
par(pin = c(2,3))
par(lwd = 2, cex = 1.5)
par(cex.axis=.75, font.axis=3)
plot(dose, drugA, type = "b", pch=19, lty=2, col="red")
plot(dose, drugB, type = "b", pch=23, lty=6, col="blue",bg="green")

#添加文本（标题等），自定义坐标轴范围
#xlab,ylab,xlim,ylim
#专门用来编辑标题的
title(main="Title", sub="sub-title",xlab = "xlabel",ylab = "ylabel")

#生成坐标轴
#axis()

#次要刻度线
#参考线

#图例（方便观察区分多组数据）
legend()

#文本标注（再点图上给各点增加说明）
text()
mtext()

#数学标注



opar <- par(no.readonly = TRUE)
par(mfrow = c(2,2))
plot(dose, drugA, main = "left-top")
plot(dose, drugB, main = "right-top")
hist(dose, main = "left-bottom")
boxplot(drugB, main = "right-bottom")
par(opar)


opar <- par(no.readonly = TRUE)
par(mfrow = c(3,1))
hist(dose, ann=FALSE)
hist(drugA,ann=FALSE)
hist(drugB,ann=FALSE)
par(opar)

#图布局
help("layout")


#图的精细控制
fig()