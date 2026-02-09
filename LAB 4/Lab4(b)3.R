#nervind

vector1 <- 1:24
vector2 <- 25:54


#array1(243)
arr1 <- array(vector1, dim = c(2, 4, 3))


#array2(325)
arr2 <- array(vector2, dim = c(3, 2, 5))

cat("\n array 1 \n")
print(arr1)

cat("\n array 2 \n")
print(arr2)

resultA <- arr1[2, , 2]
resultB <- arr2[3, 2, 1]

cat("\n the 2nd row of the 2nd matrix of the array is: \n")
print(resultA)

cat("\n element in the 3rd row and 2nd collumn of the 1st matrix of array 2 is: \n")
print(resultB)