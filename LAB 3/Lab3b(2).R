#nervind

student_data <- list(names = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", "Larson", "Holland", "Paul", "Simu", "Renner"),
  scores = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59)
)

highest_score <- max(student_data$scores)
lowest_score <- min(student_data$scores)
average_score <- mean(student_data$scores)

students_highest <- student_data$names[which(student_data$scores == highest_score)]
students_lowest <- student_data$names[which(student_data$scores == lowest_score)]

cat("\nHighest Score:", highest_score, "\n")
cat("Lowest Score:", lowest_score, "\n")
cat("Average Score:", average_score, "\n")

cat("Student with highest score:", paste(students_highest, collapse=" AND "), "\n")
cat("Student with lowest score:", paste(students_lowest, collapse=", "), "\n")