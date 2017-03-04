#数据框

patientID <- c(1,2,3,4)
age <- c(25,34,28,52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
patientdata <- data.frame(patientID, age, diabetes, status)

#和matrix类似
#在[填入一个数字]则表示第几个单位元素的对象，这里的单位是一类数据
#若是[,数字]则表示第几列的数据（不显示字段意义）
#若是[数字,]则表示第几行的对象

Y = patientdata[c(1,3,4),]
#按行取数据时会包括属性名，如果只要数据的话，使用names函数
Z = patientdata[1,]
names(Z) <- NULL
#v = as.vector(patientdata[1,])
Z

#若是[数字1:数字2]表示第数字1列到数字2列的集合
H = patientdata[1:2]
H
#若是[数字1,数字2]表示第数字1行第数字2列的值
H = patientdata[1,2]
H


patientdata[c("age","status")]

patientdata$age

#列联表统计分类并计数
table(patientdata$diabetes, patientdata$status)

#attach方法,将数据框添加到R的搜索路径中
summary(patientdata$age)
plot(patientdata$age, patientdata$patientID)

attach(patientdata)
summary(age)
plot(age, patientID)

detach(patientdata)

#with方法
with(patientdata,{
  summary(age)
})

patientdata <- data.frame(patientID, age, diabetes, status,row.names = patientID)
patientdata




#因子(类型变量和有序类型变量)

status <- c("Poor", "Improved", "Excellent", "Poor")
#factor方法是以整数向量存储类别值，具体赋值按照字母顺序而定
status <- factor(status, ordered = TRUE)
#覆盖默认排序
status <- factor(status, order=TRUE, levels = c("Poor", "Improved", "Excellent"))


#因子的使用
diabetes <- factor(diabetes)
status <- factor(status, order = TRUE)
patientdata <- data.frame(patientID, age, diabetes, status)
#显示对象的结构
str(patientdata)
summary(patientdata)
