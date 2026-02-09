#nervind

V1 <- c(2,3,1,5,4,6,8,7,9)

matrix1 <- matrix(V1, nrow = 3, ncol = 3)

matrix2 <- t(matrix1)


rownames(matrix1) <- c("row1", "row2", "row3")
colnames(matrix1) <- c("col1", "col2", "col3")

rownames(matrix2) <- c("row1", "row2", "row3")
colnames(matrix2) <- c("col1", "col2", "col3")

cat("matrix1: \n")
print(matrix1)

cat("\n matrix2(transposed): \n")
print(matrix2)

#add
addResult <- matrix1 + matrix2
cat("\n addition result: \n")
print(addResult)

#subt
subtResult <- matrix1 - matrix2
cat("\n subtraction result: \n")
print(subtResult)

#multiply
mulResult <- matrix1 * matrix2
cat("\n multiplication result: \n")
print(mulResult)

#div
divResult <- matrix1 / matrix2
cat("\n division result: \n")
print(divResult)
