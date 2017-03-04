#矩阵
mymatrix <- matrix(1:20, nrow = 5, ncol = 4)


cells <- c(1,26,24,68)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2")

#byrow 按行填充,默认是按列填充
mymatrix <- matrix(cells, nrow = 2, ncol = 2, byrow = TRUE,
                   dimnames = list(rnames, cnames))

mymatrix <- matrix(1:10, nrow = 5)
mymatrix[6]

mymatrix[,2]

mymatrix[c(1:2),2]
