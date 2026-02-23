#Lab6b nervindraj 22011384

student_data2 <- data.frame(name = c("Anastasia", "Dima", "Michael", "Matthew,", "Laura", "Kevin", "Jonas"), score = c(12.5, 9.0, 16.5, 12.0, 9.0, 8.0, 19.0), attempts = c(1, 3, 2, 3, 2, 1, 2))

#question2
student_data2$qualify <- c("yes", "no", "yes", "no","no","no","yes")
cat("\n QUESTION 2  \n ")
print(student_data2)
View(student_data2)


#question 3
rowNew <- data.frame(name = "Emily", score = 14.5, attempts = 1, qualify = "yes")
student_data3 <- rbind(student_data2, rowNew)
cat("\n QUESTION 3  \n ")
print(student_data3)
View(student_data3)


#question 4
student_data3$qualify <- as.factor(student_data3$qualify)

cat("\n QUESTION 4 \n")
cat("summary")
str(student_data3)
cat("rows:", nrow(student_data3), "\n")
cat("collumns:", ncol(student_data3), "\n")
View(student_data3)
print(summary(student_data3))