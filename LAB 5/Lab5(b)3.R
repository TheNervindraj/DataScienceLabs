#nervindraj 22011384

#question3

cat("\n Check whether an n digits number is Armstrong or not: \n")

num_str <- readline(prompt = " Input an integer: ")
num <- as.integer(num_str)

n <- nchar(num_str)

temp <- num
sum <- 0

while (temp >0){
  digit <- temp %% 10
  sum <- sum + (digit^n)
  temp <- temp %/% 10
}



if (num == sum){
  cat(num, "is an Armstrong number \n")
}else {
  cat(num, "is not an Armstrong number \n")
}

  
