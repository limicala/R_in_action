#数组
#数组和矩阵类似，维度可以大于2

dim1 <- c("A1", "A2")
dim2 <- c("B1", "B2", "B3")
dim3 <- c("C1", "C2", "C3", "C4")
z <- array(1:24,c(2,3,4), dimnames = list(dim1, dim2, dim3))
z
