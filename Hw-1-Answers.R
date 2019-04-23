# R Programming Quiz 1
#load quiz data
data <- read.csv("hw1_data.csv")

#Find out column names. 
colnames(data)

# Question 2, extract the first two rows
data2 <- data[1:2,]
data2

#Count the number of rows in the dataset
tail(data)
nrow(data)

#extract the last 2 rows of the dataset
data[152:153,]

#what is the value of Ozone in the 47th row?
data[47,1]

#or
data$Ozone[47]

#how many missing values are in the Ozone column?
missingOzone <- is.na(data$Ozone)
sum(missingOzone)
 #or
ozone_data <- data$Ozone
length(ozone_data[is.na(ozone_data)])

#what is the mean of the ozone column in this dataset?
mean(ozone_data[!missingOzone])

#extract the subset of rows where Ozone > 31, and Temp > 90. 
#what is the mean of Solar.R in this subset?

sub0 <- data[data$Ozone > 31, , drop = FALSE]
sub1 <- sub0[sub0$Temp > 90, , drop = FALSE]
sub2 <- na.omit(sub1)
mean(sub2$Solar.R)

#What is the mean of "Temp" when "Month" is equal to 6?
June <- data[data$Month ==6,]
mean(June$Temp)

# What is the max Ozone value in the month of may?
May <- data[data$Month == 5, , drop = FALSE]
MayClean <- na.omit(May)
max(MayClean$Ozone)


