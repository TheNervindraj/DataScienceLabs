#nervindraj_22011384 
setwd("D:/UNI FILES/DATA SCIENCE LABS/LAB Project")
library(dplyr)
library(tidyr)
library(stringr)
library(lubridate)

#ingestion
raw_lines <- readLines("Unclean Dataset.csv")
header <- str_trim(str_split(raw_lines[1], ",")[[1]])

processed_rows <- list()
for (i in 2:length(raw_lines)) {
  line <- str_trim(raw_lines[i])
  if (line == "") next #skip empty
  
  #splitby pipes
  row_data <- str_split(line, "\\|")[[1]]
  
  #clean up
  row_data[length(row_data)] <- str_remove_all(row_data[length(row_data)], ",")
  
  #remove whitespace
  row_data <- str_trim(row_data)
  
  #collumn count
  if (length(row_data) < length(header)) {
    row_data <- c(row_data, rep(NA, length(header) - length(row_data)))
  } else if (length(row_data) > length(header)) {
    row_data <- row_data[1:length(header)]
  }
  
  processed_rows[[length(processed_rows) + 1]] <- row_data
}

#make df
df <- as.data.frame(do.call(rbind, processed_rows), stringsAsFactors = FALSE)
colnames(df) <- header


#data cleaning
clean_df <- df


clean_df <- mutate(clean_df, across(everything(), ~na_if(str_trim(.), "")))
clean_df <- mutate(clean_df, across(everything(), ~na_if(., "NA")))
clean_df <- filter(clean_df, !is.na(Student_ID))
clean_df <- mutate(clean_df, Student_ID = suppressWarnings(as.integer(Student_ID)))
clean_df <- distinct(clean_df, Student_ID, .keep_all = TRUE)

#missing names
clean_df <- mutate(clean_df, 
                   First_Name = replace_na(First_Name, "Unknown"),
                   Last_Name  = replace_na(Last_Name, "Unknown")
)

#age
clean_df <- mutate(clean_df, 
                   Age = as.numeric(str_extract(Age, "\\d+")),
                   Age = replace_na(Age, round(median(Age, na.rm = TRUE)))
)

#gender
clean_df <- mutate(clean_df, 
                   Gender = str_to_upper(str_sub(Gender, 1, 1)),
                   Gender = if_else(Gender %in% c("M", "F") & !is.na(Gender), Gender, "Unknown")
)

#course
clean_df <- mutate(clean_df, Course = case_when(
  str_detect(Course, "(?i)Learn") ~ "Machine Learning",
  str_detect(Course, "(?i)Dev")   ~ "Web Development",
  str_detect(Course, "(?i)Analy") ~ "Data Analytics",
  str_detect(Course, "(?i)Sci")   ~ "Data Science",
  str_detect(Course, "(?i)Secur") ~ "Cyber Security",
  TRUE                            ~ "Undeclared"
))

#payemnt
clean_df <- mutate(clean_df, 
                   Total_Payments = as.numeric(str_remove_all(Total_Payments, "[^0-9.]")),
                   Total_Payments = replace_na(Total_Payments, median(Total_Payments, na.rm = TRUE))
)

#dates
clean_df <- mutate(clean_df, Enrollment_Date = as.Date(suppressWarnings(
  parse_date_time(Enrollment_Date, orders = c("ymd", "dmy", "mdy", "dby"))
)))

#export
write.csv(clean_df, "cleaned_dataset.csv", row.names = FALSE)
cat("Dataset successfully cleaned and saved to 'cleaned_dataset.csv'!\n")