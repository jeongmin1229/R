number <- 682
count <- 0

while(number != 1){
  if(number %% 2 == 0){
    count <- count + 1
    number <- number/2
  }
  else if(number %% 2 ==1){
    count <- count + 1
    number <- (number*3+1)/2
    
  }
}
cat(count)