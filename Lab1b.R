# 1. Write a R code to create a sequence of 20 numbers. 
#The program will calculate and display the square of the number sequence.
numbers <- 1:20
squares <- numbers^2
print(squares)




#Given two variables, num1=0.956786 and num2=7.8345901. Write a R code to 
#display the num1 value in 2 decimal point number, and num2 value in 3 decimal point 
#number (clue: use function round()).
num1 <- 0.956786
num2 <- 7.8345901

round_num1 <- round(num1, digits = 2)
print(round_num1)

round_num2 <- round(num2, digits = 3)
print(round_num2)



#3.Write a R code that retrieves from the user the radius value of a circle. The program 
#will calculate and display the circle’s area.  

radius_input <- readline(prompt = "Enter the radius of the circle: ")

radius <- as.numeric(radius_input)

area <- pi * radius^2

cat("The area of the circle is:", area)