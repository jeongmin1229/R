d <- c(1,4,3,7,8)
2*d
d-5
3*d-1

x <- c(1,2,3,4)
y <- c(5,6,7,8)
x+y

v1 <- c(1,2,3,4)
v2 <- c('a','b','c')
v3 <- c(v1,v2)
v3  # 자동 형변환



d <- 1:9
d>=5
d[d>5]
sum(d>5)  # 5보다 큰 값의 개수를 출력
sum(d[d>5]) # 5보다 큰 값의 합계를 출력
d==5

condi <- d>5 & d<8
condi


bt <- c('A','B','B','O','AB','A')
bt.new <- factor(bt)
bt
bt.new
bt[5]
bt.new[5]
levels(bt.new)

# 팩터의 문자값을 숫자로 바꾸어 출력
as.integer(bt.new) 

bt.new[7] <- 'B'
bt.new[8] <- 'C'
levels(bt.new)


h_list <- c('balling', 'tennis', 'ski')
person <- list(name='TOM', age=25,student=TRUE, hobby=h_list)
person

z <- matrix(1:20, nrow = 4, ncol = 5)
z

z <- matrix(1:20, nrow = 4, ncol = 5, byrow = T)
z

x <- 1:4
y <- 5:8
z <- matrix(1:20, nrow = 4, ncol = 5)

m1 <- cbind(x,y)
m1
m2 <- rbind(x,y)
m2

city <- c('Seoul', 'Tokyo', 'Washington')
rank <- c(1:3)
city.info <- data.frame(city, rank)
dim(city.info)
dim(z)

head(iris)
tail(iris)
dim(iris)
colnames(iris)
str(iris)
iris[,5]
levels(iris[,5])

z <- matrix(1:20, nrow=4, ncol=5)
z
t(z)

IR.1 <- subset(iris, Species=='setosa')
IR.1
IR.2 <- subset(iris, Sepal.Length>5.0 & Sepal.Width>4.0)
IR.2
IR.2[,c(2, 4)] # 2열과 4열의 값만 추출

class(iris)
class(state.x77)

head(state.x77)
is.matrix(state.x77)
st <- data.frame(state.x77)
head(st)
class(st)


install.packages('svDialogs')
library(svDialogs)
user.input <- dlg_input('Input incode')$res
user.input
class(user.input)

income <- as.numeric(user.input)
tax <- income*0.05
cat('세금:', tax)

getwd() # 작업 경로와 csv파일 위치확인
my_titanic <- read.csv('Titanic.csv', header = T)
head(my_titanic)
class(my_titanic) # data.frame


my_titanic <- read.csv('Titanic.csv', header = F)
head(my_titanic)
class(my_titanic) # data.frame

my.iris <- subset(iris, Species=='setosa')
write.csv(my.iris, 'my_iris.csv', row.names = FALSE)
my_iris = read.csv('my_iris.csv', header = T)
head(my_iris, 3)

install.packages('readxl')
library(readxl)
air <- readxl::read_xlsx('my_csv_1.xlsx')
air

install.packages('readxl')
library(readxl)
read_xlsx('my_csv_1.xlsx')


test_csv <- read.csv('test.csv', header = T)
test_csv

delivery_available <- 'ok'
if(delivery_available == 'ok'){
  print('도시락을 먹어요')
}else if(delivery_available == '2층'){
  print('2층 식당에 가요')
}else{
  print('안 먹어요')
}
