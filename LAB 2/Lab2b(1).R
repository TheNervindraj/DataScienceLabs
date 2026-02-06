#nervind

height <- as.numeric(readline(prompt = "enter height in m: "))
weight <- as.numeric(readline(prompt = "enter weight in kg: "))

bmi <- weight / (height^2)
cat("your bmi is : ", round(bmi, 2), "\n")


if (bmi < 18.5) {
  status <- "underweight"
  
}else if (bmi >= 18.5 && bmi <= 24.9){
  status <- " normal weight"
}else if (bmi >= 25 && bmi <= 29.9){
  status <- "overweight"
}else{
  status <- "obese"
}


cat("Status: ", status, "\n")


