test1 <- 90
if (test1  >= 60)
{
  print('필기 통과')
  test2 <- 80
  if(test2 >=60){
    print('실기 통과')
  }
}

for(i in 1:5){
  print('i')
}

for(i in 1:9){
  cat('2 *', i, '=', 2*i, '\n')
}

number <- 1
while(number <= 5){
  print(number)
  number <- number + 1
}
print(number)

for(i in 1:20){
  if(i %% 2 ==0){
    cat(i, '') 
  }
}

index <- seq(1,100,10)
for(i in index){
  cat(i, ' ')
}

total = 1
number = 5
while(number > 0){
  total <- total * number
  number <-  number -1
}
print(total)


recursive <-  function(data){
  if(data <= 1){
    return(1)
  }
  data <- data * recursive(data-1)
  return (data)
}
recursive(5)


fruits <- c('바나나', '딸기', '토마토')
for(fruit in fruits){
  print(fruit)
}

for(num in 1:10){
    if(num == 4){
      next
    }
    cat(num, ' ')
}

for(sensing_value in c(24,25,26,27,28,29,280,26,24,20)){
  if (!(sensing_value > 10 & sensing_value < 40)){
    next
  }
  cat(sensing_value, ' ')
}


for(sensing_value in c(24,25,26,27,28,29,-1,26,24,20)){
  if (sensing_value == -1){
    break
  }
  cat(sensing_value, ' ')
}


head(iris[,1:4], 3)
apply(iris[,1:4], 1, mean) # 행 방향으로 함수 적용
apply(iris[,1:4], 2, mean) # 열 방향으로 함수 적용

for(i in 60:0){
  cat(i, ' ')
  if(i==0){
    cat('\n발사!!!')
  }
}

count <- 60
while(count >= 0){
  cat(count, ' ')
  count <- (count - 1)
  if(count == -1){
    cat('\n발사!!!')
  }
}

for(i in 1:9){
  for(j in 1:9){
    cat(i*j, ' ')
  }
  cat('\n')
}

i <- 1
j <- 1
while(i<10){
  while(j<10){
    cat(i*j, ' ')
    j <- j+1
  }
  i <- i+1
  j <- 1
  cat('\n')
}

for(i in 1:7){
  for(j in 1:7){
    if(i>=j){
      cat(j)
    }
    else{
      cat('*')
    }
  }
  cat('\n')
}

i <- 1
j <- 1
while(i<=7){
  while(j<=7){
    if(i>=j){
      cat(j)
    }
    else{
      cat('*')
    }
    j <- j+1
  }
  j <- 1
  i <- i+1
  cat('\n')
}



library(svDialogs)
count <- 0
sum <-  0
max <-  0
min <- Inf

while(TRUE){
  user.input <- dlg_input('input nunber')$res
  if(user.input < 0){
    cat('총합:', sum, '\n')
    cat('개수:', count, '\n')
    cat('평균:', sum/count, '\n')
    cat('최대:', max, '\n')
    cat('최소:', min, '\n')
    break
  }
  num = as.integer(user.input)
  sum <- sum + num
  
  if(max < num){
    max <-  num
  }
  
  if(min > num){
    min <- num
  }
  
  count <- count +1
}


k <- 0
for(i in 1:10){
  for(j in 1:(10+k)){
    if(j>i){
      cat('*')
    }
    else{
      cat(' ')
    }
  }
  cat('\n')
  k <- k+1
}


count = 0
for(i in 1:100){
  for(j in 1:100){
    for(k in 1 : 100){
      if(i*i + j*j == k*k){
        count <- count + 1
        cat('a:',i,'b:',j,'c:',k,'\n')
      }
    }
  }
}
cat('조합 수:',count,'개')











