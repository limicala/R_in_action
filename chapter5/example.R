#限定小数点位数

options(digits = 2)

Student <- c("John Davis", "Angela williams", "Bullwinkle Moose",
             "David Jones", "Janice Markhammer", "Cheryl Cushing",
             "Reuven Ytzrhak", "Greg Knox", "Joel England",
             "Mary Rayburn")
Math <- c(502, 600, 412, 358, 495, 512, 410, 625, 573, 522)
Science <- c(95, 99, 80, 82, 75, 85, 80, 95, 89, 86)
English <- c(25, 22, 18, 15, 20, 28, 15, 30, 27, 18)
roster <- data.frame(Student, Math, Science, English, stringsAsFactors = FALSE)

z <- scale(roster[,2:4])
#1为行，2为列
score <- apply(z, 1, mean)

help("quantile")

roster <- cbind(roster, score)
#quantile通过设置分界标准得出具体分解点
y <- quantile(score, c(.8, .6, .4, .2))

roster$grade[score >= y[1]] <- "A"
roster$grade[score < y[1] & score >= y[2]] <- "B"
roster$grade[score < y[2] & score >= y[3]] <- "C"
roster$grade[score < y[3] & score >= y[4]] <- "D"
roster$grade[score < y[4]] <- "F"

#分割姓名
name <- strsplit(roster$Student, " ")
name
help("sapply")
Firstname <- sapply(name, "[", 1)
Lastname <- sapply(name, "[", 2)
roster <- cbind(Firstname, Lastname, roster)
roster$Student <- NULL

#按照姓名排序
roster <- roster[order(Lastname, Firstname),]
