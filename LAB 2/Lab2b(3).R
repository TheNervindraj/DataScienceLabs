#nervind

name <- readline(prompt = "enter your name: ")
phone <- readline(prompt = "enter your phone number(min 7 nums): ")

nameUpper <- toupper(name)

phone_len <- nchar(phone)
first3num <- substr(phone, 1, 3)
last4num <- substr(phone, (phone_len - 3), phone_len)

cat("Hi, ", nameUpper)
cat(", A verification code has been sent to ", first3num, "-xxx", last4num)