#nervind

string1 <- readline(prompt = "enter string 1: ")
string2 <- readline(prompt = "enter string 2: ")

if (tolower(string1)== tolower(string2)) {
  print("this program compares 2 strings, both inputs are similar: TRUE" )
}else {
  print("this program compares 2 strings, both inputs are similar: FALSE")
}