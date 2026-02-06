#nervind

student_data <- data.frame(
  Name = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", 
           "Larson", "Holland", "Paul", "Simu", "Renner"),
  Exam_Score = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59), 
  Chemistry = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59),
  Physics = c(89, 86, 65, 52, 60, 67, 40, 77, 90, 61)
)

chem_fail_count <- sum(student_data$Chemistry <= 49)
phys_fail_count <- sum(student_data$Physics <= 49)

max_chem <- max(student_data$Chemistry)
best_chem_student <- student_data$Name[student_data$Chemistry == max_chem]

max_phys <- max(student_data$Physics)
best_phys_student <- student_data$Name[student_data$Physics == max_phys]



cat("\nNumber of students who failed Chemistry:", chem_fail_count, "\n")
cat("Number of students who failed Physics:", phys_fail_count, "\n")
cat("Highest Chemistry Score:", max_chem, "by", paste(best_chem_student, collapse=" AND "), "\n")
cat("Highest Physics Score:", max_phys, "by", paste(best_phys_student, collapse=", "), "\n")