#向量
8.1:10.9
8.5:1.5
c(1:6,8:0)

vector("numeric",3)
vector("complex",4)
vector("logical",5)
vector("character",5)
vector("list",5)
numeric(5)
complex(5)
logical(5)
character(5)
list(5)

#序列
seq.int(3,12)
seq.int(2.2,3.7)
seq.int(3,12,2)
seq.int(3.2,1.1,-0.1)

n <- 0
1:n
seq_len(n)
m <- 5
1:5
seq_len(m)
seq_len(3)

pp <- c("peter","a","you","ok","how")
seq_along(pp)
for(i in seq_along(pp))print(pp[i]) # 这两个seq_along为什么表达出来的结果不一样？？

#长度
length(1:120)
length(c(TRUE,FALSE,NULL,NA))
length(TRUE)

sn <- c("you","and","me","beautiful","needs")
length(sn)
nchar(sn)

ppp <- c(1,2,3,4,4,5,6,6,7)
length(ppp) <- 3
ppp
length(ppp) <- 11
ppp

#命名
c(apple = 1,banan = 2, yes = 3,4)
c(apple = 1,banan = 2, "kiwi fruit" = 3,4)

x <- 1:4
names(x) <- c("apple","banana","kiwi fruit","")
x
names(x)
names(1:4)

#索引向量
x <- (1:5)^2
x
x[c(1,2,3)]
x[c(-2,-4)]
x[c(TRUE,TRUE,FALSE,FALSE)]
names(x) <- c("one","four","nine","sixteen","twentyfive")
x[c("one","nine","twentyfive")]
x[c(1,NA,5)]
x[c(TRUE,FALSE,TRUE,NA,TRUE)]
x[3.9]
x[10]
x[]

which(x>2)
which.max(x)
which.min(x)

1:5 + 1
1:5 + 1:15 #长向量是短向量的倍数

#rep()重复使用元素创建矢量
rep(1:5,3)
rep(1:5,each=3)
rep(1:5,times=3)
rep(1:5,length.out=9)

rep.int(1:5,3)
rep_len(1:5,13)

#创建数组
(three_d_array <- array(
  1:24,
  dim = c(4,3,2),  
  dimnames = list(
    c("one","two","three","four"),
    c("ein","zwei","drei"),
    c("un","deux")
  )
))

class(three_d_array)

#创建矩阵
(a_matrix <- matrix(
  1:12,
  nrow = 4,
  dimnames = list(
    c("one","two","three","four"),
    c("ein","zwei","drei")
  )
))

class(a_matrix)

#使用array函数创建矩阵
(two_d_array <- array(
  1:12,
  dim = c(4,3),
  dimnames = list(
    c("one","two","three","four"),
    c("ein","zwei","drei")
  )
))

class(two_d_array)

#创建矩阵byrow = TRUE来按行填充矩阵
(a_matrix <- matrix(
  1:12,
  nrow = 4,
  byrow = TRUE,
  dimnames = list(
    c("one","two","three","four"),
    c("ein","zwei","drei")
  )
))

class(a_matrix)

#dim返回维度的整数值向量
dim(three_d_array)
dim(a_matrix)

nrow(a_matrix)#行数
ncol(a_matrix)#列数

length(three_d_array)
length(a_matrix)#所有维度的乘积

#nrow、ncol和dim用于向量时将返回NULL值
#NROW和NCOL，它们把向量看做具有单个列的矩阵 (也即数学意义上的列向量)
identical(nrow(a_matrix),NROW(a_matrix))
identical(ncol(a_matrix),NCOL(a_matrix))

recaman <- c(0,1,3,6,2,7,13,20)
nrow(recaman)
NROW(recaman)
ncol(recaman)
NCOL(recaman)

#矩阵的行和列 行名rownames和列名colnames
rownames(a_matrix)
colnames(a_matrix)
dimnames(a_matrix)
rownames(three_d_array)
colnames(three_d_array)
dimnames(three_d_array)

#索引数组
a_matrix[1,c("zwei","drei")]#在第一行，第二列第三列的两个元素
a_matrix[1,]#第一行的所有元素
a_matrix[,c("zwei","drei")]#第二列，第三列的所有元素

#合并矩阵
(another_matrix <- matrix(
  seq.int(2,24,2),
  nrow = 4,
  dimnames = list(
    c("five","six","seven","eight"),
    c("vier","funf","sechs")
  )
))

c(a_matrix,another_matrix)

#使用cbind和rbind函数按行和列来绑定两个矩阵，能更自然地合并它们
cbind(a_matrix,another_matrix)
rbind(a_matrix,another_matrix)

#数组算术
a_matrix + another_matrix
a_matrix*another_matrix

t(a_matrix)#t用于转置

a_matrix%*%t(a_matrix)
1:3%o%4:6
outer(1:3,4:6)

(m <- matrix(c(1,0,1,5,-3,1,2,4,7),nrow = 3))
m^-1
(inverse_of_m <- solve(m))
m %*% inverse_of_m


