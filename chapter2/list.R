#列表
#列表是向量，矩阵，数据框或其他列表的集合

g <- "My First List"
h <- c(25, 16,18,39)
j <- matrix(1:10, nrow = 5)
k <- c("one", "two", "three")

mylist <- list(title=g, ages=h,j,k)

mylist
#mylist[2]和mylist[[2]]的区别
mylist[2]

mylist[["ages"]]

