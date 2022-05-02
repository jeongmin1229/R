install.packages(ggplot2)
library(ggplot2)

ggplot(data=iris, aes(x=Petal.Length, y =Petal.Width)) + geom_point()

a <- 2
print(a)
cat('a :', a)

age.1 <- 10
age.2 <- 20
print(age.1 + age.2)

name <- 'jone'
age <-  '123'
typeof(name)
typeof(age)
print(name + age)
cat(name, age)

name2 <- 'lee'
number <- 123
paste0(name, number)
as.integer('100')+200

score <- c(10,20,30,40,50,60,70)
score
length(score)



mean(score) # 평균 출력
sum(score) # 총합
max(score) # 최대
min(score) # 최소

test <- c(10, 'a', TRUE)
test
length(test)


v1 <- 50:90
v1

v2 <- c(1,2,5, 50:70)
v2

v3 <- seq(1, 101, 3) # 시작, 종료, 간격
v3

v4 <- rep(1, times = 5)
v4

v5 <- rep(1:5, times=3)
v5

v6 <- rep(c(1,3,5), times=3)
v6

v7 <- rep(c('a', 'b', 'c'), each =3)
v7

absent <- c(8,2,0,4,1)
absent
names(absent)
names(absent) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
absent
names(absent)
absent['Mon']
absent[-2]  # -는 '제외하고 의미'
absent[1]


v1 <- c(1,5,7,8,9) #v1의 두번째 값을3으로변경
v1
v1[2] <- 3 
v1
v1[c(1,5)] <- c(10,20) #v1의 1,5번째 값을 각각 10,20 으로변경
v1
v1 <- c(100,200,300) # v1의 내용을 100,200,300으로 변경
v1
length(v1)