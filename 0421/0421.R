myadd <- function(x, y){
  res <- x+y
  return(res)
}
myadd(1,2)

mydiv <- function(x, y=2){
  result <- x/y
  return (result)
}
mydiv(x=10,y=3)
mydiv(10,3)
mydiv(10)

my_sachick <- function(x, y){
  val.add <- x+y
  val.sub <- x-y
  val.mul <- x*y
  val.div <- x/y
  return(list(add=val.add, sub=val.sub, mul=val.mul, div=val.div))
}

result <- my_sachick(10,3)
cat(result$add)
cat(result$sub)

getwd()
source('my_modl.R')
my_func2(1)

score <- c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84)
index <- which(score==69)
score[index]
score[index] <- 100
score

index2 <- which(score <70)
index2
score[index2]

min(score)
which.min(score)

which(iris$Petal.Length >5.0)






