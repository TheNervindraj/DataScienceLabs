#nervind


age <- c(55,57,56,52,51,59,58,53,59,55,60,60,60,60,52,55,56,51,60,
         52,54,56,52,57,54,56,58,53,53,50,55,51,57,60,57,55,51,50,57,58)


age_factor <- factor(age)
age_counts <- table(age)

#table 1
cat("\n Table 1: staff age \n")
print(as.data.frame(age_counts))


breaks_seq <- c(50, 52, 54, 56, 58, 61)
labels_seq <- c("50-52", "52-54", "54-56", "56-58", "58-60")

age_range <- cut(age, breaks = breaks_seq, right = FALSE, labels = labels_seq)
range_counts <- table(age_range)

#table 2
cat("\n Table 2: age range \n")
print(as.data.frame(range_counts))