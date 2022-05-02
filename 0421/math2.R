# 선형 회귀(직선 찾기) vs 상관도(cor)
# 선형 회귀는 뭔가를 예측할 때

x <- rnorm(400)
y <- rnorm(400)
plot(x, y, xlim = c(-7, 7), ylim = c(-7, 7), pch=16, main=cor(x,y))
abline(lm(y ~ x))

x <- rnorm(40)
y <- rnorm(40)
plot(x, y, xlim = c(-4, 4), ylim = c(-4, 4), pch=16, main=cor(x,y))
abline(lm(y ~ x)) # 선형회귀

choose(4,2)   # 4C2(4 combination 2)

SL = iris$Sepal.Length
SW = iris$Sepal.Width
PL = iris$Petal.Length
PW = iris$Petal.Width
plot(SL, SW, main = cor(SL, SW))
abline(lm(SW ~ SL))


# --------------------------------------------------------------------------------------------

# 로지스틱 회귀 (분류의 문제) 
# 회귀를 사용하여 데이터가 어떤 범주에 속할 확률을 0에서 1 사이의 값으로 예측
# 독립 변수의 선형 결합을 이용하여 사건의 발생 가능성을 예측하는데 사용되는 통계 기법

set.seed(1) # 통제된 상황 //' 파이썬 머신러닝에서 random_state와 같은 것

# 100명, 10개의 독립변수
x <- matrix(round(rnorm(1000, mean = 50, sd = 10)), ncol=10 )

invlogit <- function(x){
  exp(x) / (1+exp(x))
}

# 종속 변수 100개
y <- sapply(1:100, function(i){rbinom(1, 1, 
  invlogit((x[i,]-50) %*% (1:10)/100 ))})

summary(x)
lm(y~x,data='',step='backward')


r1 <- glm(y~x,family=binomial(link='logit'))
summary(r1)

cor(x)

# Intercept는 절편
r1 = glm(y ~ x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]
         , family = binomial(link='logit'))
summary(r1) # AIC: 91.291  --> 다 돌린거 (4,5,6,8,9,10//  7은 .이다.)

r2 = glm(y ~ x[,4]+x[,5]+x[,6]+x[,8]+x[,9]+x[,10] # 순수 *만 이용
         , family = binomial(link='logit'))
summary(r2) # 90.284

r3 = glm(y ~ x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]
         , family = binomial(link='logit'))
summary(r3) # AIC: 87.922


r4 = glm(y ~ x[,4]+x[,5]+x[,6]+x[,7]+x[,8]
         , family = binomial(link='logit'))
summary(r4) # AIC: 117.92

# AIC는 주어진 데이터 셋에 대한 통계 모델의 상대적인 품질을 평가하는 것이다. 
# AIC 값은 낮을수록 좋다
# AIC가 작은것을 찾아야 한다.(x를 뭘 넣고 뭘 빼야할지를 알아야한다.)

plot(fitted(r1), y)
plot(fitted(r2), y)
plot(fitted(r3), y)


# ROC 함수 : 혼돈행렬(정사각형 모양이다.) --> 대각선은 잘 찾은 것,
# 오류는 어디에서 많이 나왔나 확인한다.
source('ROC.R')
ROC(fitted(r1), y)
ROC(fitted(r2), y)
ROC(fitted(r3), y)

install.packages('pROC')

library('pROC')


