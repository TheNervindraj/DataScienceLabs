#Lab6b nervindraj 22011384

#question1
student_data2 <- data.frame(name = c("Anastasia", "Dima", "Michael", "Matthew,", "Laura", "Kevin", "Jonas"), score = c(12.5, 9.0, 16.5, 12.0, 9.0, 8.0, 19.0), attempts = c(1, 3, 2, 3, 2, 1, 2))
cat("\n QUESTION 1  \n ")
print(student_data2)



#question2
student_data2$qualify <- c("yes", "no", "yes", "no","no","no","yes")
cat("\n QUESTION 2  \n ")
print(student_data2)
View(student_data2)