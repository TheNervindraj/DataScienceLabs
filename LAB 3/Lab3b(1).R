#nervind

scores <- c(33, 24, 54, 94, 16, 89, 60, 6, 77, 61, 13, 44, 26, 24, 73, 73, 90, 39, 90, 54)


grades <- rep("", length(scores))


grades[scores >= 90] <- "A(90-100)"
grades[scores >= 80 & scores <= 89] <- "B(80-89)"
grades[scores >= 70 & scores <= 79] <- "C(70-79)"
grades[scores >= 60 & scores <= 69] <- "D(60-69)"
grades[scores >= 50 & scores <= 59] <- "E(50-59)"
grades[scores <= 49] <- "F(<=49)"


grade_summary <- table(factor(grades, levels = c(" A(90-100)", "B(80-89)", "C(70-79)", "D(60-69)", "E(50-59)", "F(<=49)")))

#pass/fail
pass_status <- scores > 49
pass_count <- sum(pass_status == TRUE)
fail_count <- sum(pass_status == FALSE)


cat("\n    GRADE DISTRIBUTION SUMMARY    \n")
print(grade_summary)

cat("\n    PASS/FAIL STATUS    \n")
cat("total students Passed:", pass_count, "\n")
cat("total students Failed:", fail_count, "\n")