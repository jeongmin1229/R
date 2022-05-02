x <- c(0,7,8,11,9,100)
mean(x)
median(x)

x <- c(1, 2, 3, 4, 5)
y <- c(5, 3, 1, 3, 5)
var(x)
var(y)
mean(x)
mean(y)

x <- 1:5
mo_var <- var(x)
sam_var_1 <- var(c(2,3,4,5))
sam_var_2 <- var(c(1,3,4,5))
sam_var_3 <- var(c(1,2,4,5))
sam_var_4 <- var(c(1,2,3,5))
sam_var_5 <- var(c(1,2,3,4))
mean(c(sam_var_1,sam_var_2,sam_var_3,sam_var_4,sam_var_5))



runif(1) # 균일 난수 0 <= x < 1 생성(개수)
runif(10)
mean(runif(10))
x=runif(10000000)
hist(x, freq=F)

x = runif(1000000) + runif(1000000) +runif(1000000)

hist(x, freq=F)


choose(10,3) * 0.4^3*0.6^7
dbinom(3, 10, 0.4)

# 앞뒤 각각 50%, 앞면이 안 나올 확률 ~ 모두 다 앞면 나올 확률
dbinom(0:10,10,0.5)
barplot(dbinom(0:10,10,0.5), names.arg = 0:10)



# 동전 던지기 : 10번 던져서 앞면이 2번 나오는게 합당한가??
# 하나의 종류의 사건
binom.test(2, 10, 0.5)


# 대립가설 --> 상대적
# 범죄 증가 했다 주장이 합당하냐 : 1998년(508건), 1999년(516건), 범죄 발생 확률(0.5)
binom.test(508, 508+516, 0.5)
bniom.test()



x <- data.frame(내성적=c(195, 123, 61, 144), 외향적=c(102, 82, 38, 107))
row.names(x) <- c('A', 'B', 'AB', 'O')
fisher.test(x)

x2 <- data.frame(내성적=c(195, 160, 19, 50), 외향적=c(102, 82, 38, 107))
row.names(x2) <- c('A', 'B', 'AB', 'O')
fisher.test(x2)

# 항아리에 red:4, white:6
# 여기에서 랜덤으로 5개를 꺼내자
# red3, white:2 이렇게 나올 확률
choose(4, 3) * choose(6, 2) / choose(10, 5)


#               r   w     r   w     r   w     r   w     r   w
# 꺼낸 구슬     4   1     3   2     2   3     1   4     0   5
# 남은 구슬     0   5     1   4     2   3     3   2     4   1
# 카이 제곱 검정
chisq.test(matrix(c(4,0,1,5), nrow=2)) # p-value = 0.05281
chisq.test(matrix(c(3,1,2,4), nrow=2)) # p-value = 0.5186
chisq.test(matrix(c(2,2,3,3), nrow=2)) # p-value = 1
chisq.test(matrix(c(1,3,4,2), nrow=2)) # p-value = 0.5186
chisq.test(matrix(c(0,4,5,1), nrow=2)) # p-value = 0.05281


#                 합   불
# 사전검사        7    13                 
# 사후검사       14    6
fisher.test(matrix(c(7,14,13,6), nrow=2)) # p-value = 0.05616



#                       사후검사 합격       사후검사 불합격
# 사전검사 합격               6                     1
# 사전검사 불합격             8                     5
# 맥니머 검정
mcnemar.test(matrix(c(6,8,1,5), nrow = 2)) # p-value = 0.0455

# 상관
# 인과 VS 상관

x <- rnorm(400) # 정규분포
hist(x)
y <-rnorm(400)
plot(x, y)

corel <- cor(x, y)
corel

a <- rnorm(400)
b <- rnorm(400)
c <- rnorm(400)
x <- a + c
y <- b + c
plot(x, y)

corel <- cor(x, y)
corel # 0.4652865 



x <- a - c
y <- b + c
plot(x, y)

corel <- cor(x, y)
corel # -0.474778

# 2008년 국토교통상 : 교직원 조합이 강한 곳은 학생들의 학력이 낮다.

조직률 <- c(50, 40, 50, 50, 90, 
         70, 60, 30, 1, 10, 
         60, 10, 40)
학생정답률 <- c(237, 238, 270, 270, 276, 
           259, 256, 231, 259, 220,
           242, 251, 209)

plot(조직률, 학생정답률)
cor(조직률, 학생정답률)
cor(조직률, 학생정답률, method='kendall')
cor(조직률, 학생정답률, method='spearman')
cor.test(조직률, 학생정답률)

# p-value
x <- c(1,2,3)
y <- c(1,3,2)
r <- cor(x, y) # 0.5

n <- 3
t <- r*sqrt(n-2)/sqrt(1-r^2)
2*pt(-t, n-2) # 0.6666667
cor.test(x, y) # p-value 0.6666667


# 최소제곱법(제일 근간을 이룸) - 
# 개수를 잘 맞춰주고 쌍도 잘 해줘야한다.
x <- c(1,2,3,4)
y <- c(2,3,5,4)
plot(x,y)

f <- function(arg){
  a <- arg[1]
  b <- arg[2]
  t <- a*x+b # 1차방정식
   # 실제 y와 인위적 y의 차 
  # 예측의 실패정도 그런데 +-면 상쇄 
  # -->제곱을 해준다.
  sum((y-t)^2)
}
# 최적화 : 기울기 선들을 막 그어놓고 각 경우의 에러값을 뽑고
# 
optim(c(1,1), f)
# a:0.7999722 b:1.5000885
0.7999722*x+ 1.5000885
# 2.300061 3.100033 3.900005 4.699977
y <- c(2,3,5,4)







