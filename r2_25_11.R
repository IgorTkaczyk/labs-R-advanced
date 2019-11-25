
library(microbenchmark)
N1 <- 1000
microbenchmark(
  test1 ={
    x <- NULL
    for(i in 1:N1){
      x <- c(x,i)
    }
  },
  test2 = {
    for(i in 1:N1){
      x[i] <- i
    }
  },
  test3 ={
  x <- numeric(N1)
  for(i in 1:N1){
    x[i] <- i
    }
  }
)