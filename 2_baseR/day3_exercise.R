## exercise1 12-10
# Open a new Rstudio script and create 3 new objects
a <- seq(from = 1, to = 10, by = 1); a
b <- c(2.1, 4.1, 6.1, 8.1); b
c <- c(0, 5, 10, 15); c
# Save your code as .R file and then save the workspace to a .Rdata file.
save.image(file = "exercise1.RData")
# Save one object using saveRDS()
saveRDS(a, file = "exercise1_a.RData")
saveRDS(a, file = "exercise1_a.RDS")
# Remove one of the objects – how can you check it is gone? check enviroment or use ls()
rm(b)
ls()
# Clear your workspace completely (remove all objects)
rm(list = ls())
# Display your current working directory.
getwd()
# Make a new directory in your linux terminal and then set the R working directory to be that new directory; do not rename when RStudion is open)
setwd("/project/obds/ipark/2_baseR/projects/day3")
getwd()
# Load the objects you saved in the .Rdata file; readRDS requires an object to 
a <- readRDS("exercise1_a.RDS")
load(file = "exercise1_a.RDS")


## Exercise 2 - Descriptive Statistics
# 1. Use readRDS() to load to an object called /t1-data/project/obds/shared/resources/2_r/my_day2matrix.rds
my_day2matrix <- readRDS("/t1-data/project/obds/shared/resources/2_r/my_day2matrix.rds")
head(my_day2matrix)
dim(my_day2matrix)
# 2. Add row sums and means to this dataset
my_day2matrix_1 <- cbind(my_day2matrix, rowSums(my_day2matrix), rowMeans(my_day2matrix))
head(my_day2matrix_1)
dim(my_day2matrix_1)
View(my_day2matrix_1)
# add col sums and means (additional)
my_day2matrix_2 <- rbind(my_day2matrix_1, c(colSums(my_day2matrix), NA, NA), c(colMeans(my_day2matrix), NA, NA))
tail(my_day2matrix_2)
dim(my_day2matrix_2)
# 3. Load the ToothGrowth datset using data(ToothGrowth) no need to assign since the data is available on RStudio
data("ToothGrowth")
View(ToothGrowth)
head(ToothGrowth)
# 4. How do find more information on this dataset? help menu
# 5. What columns of data do we have?
colnames(ToothGrowth)
dim(ToothGrowth)
# 6. What is the mean tooth length?
mean(ToothGrowth$len)
# 7. What is the maximum and minimum weight of the tooth length?
max(ToothGrowth$len)
min(ToothGrowth$len)
# 8. Can you calculate rowSums and rowMeans on this data? one of the columns is a character so can't calculate the data



## Exercise 3 - Sorting
# 1. Load the AirQuality dataset. go to help page first to check the correct name
data("airquality")
# 2. Look up more information about this dataset. go to help page 
# 3. Examine the dataset – how many rows and columns are there?
dim(airquality)
# 4. Display the column headers.
colnames(airquality)
# 5. Sort the dataframe by the first column (Ozone) in ascending order.
head(airquality)
airquality_2 <- airquality[order(airquality$Ozone),] 
head(airquality_2)
# 6. Sort the dataframe by the Month and then the Temp column in descending order and save to a new variable.
airquality_2 <- airquality[order(airquality$Month, airquality$Temp, decreasing = TRUE),] 
head(airquality_2)
# 7. Save this sorted data to a file on the server.
write.table(airquality_2, file="airquality.edit.csv", sep="\t", quote=F, row.names=F )

## Exercise 4 - Merging
# Create the dataframes called buildings and data to merge:
buildings <- data.frame(location=c(1, 2, 3), name=c("b1", "b2", "b3"))
data <- data.frame(survey=c(1,1,1,2,2,2), location=c(1,2,3,2,3,1), efficiency=c(51,64,70,71,80,58))
# What is the common key variable in these dataframes? location
head(buildings)
head(data)
# Use the merge() function to merge the two dataframes by the common key variable into a new dataframe called buildingStats.
buildingstats <- merge(x=buildings, y=data, by = "location", all=T)
head(buildingstats)

## Exercise 5 - Aggregate
# 1. Aggregate (or group) the airquality data by Month and return means on each of the numeric variables. Also, remove “NA” values.
head(airquality)
aggregate(airquality, by=list(airquality$Month), FUN=mean, na.rm=T)
aggregate(airquality, by=list(Month=airquality$Month), FUN=mean, na.rm=T) # add a column of Month
# 2. Aggregate the Solar.R column by Month, returning means of Solar.R The header of column 1 should be Month. Remove “not available” values.
aggregate(airquality$Solar.R, by=list(airquality$Month), FUN=mean, na.rm=T)
aggregate(Solar.R~Month, airquality, FUN=mean, na.rm=T)
# 3. Apply the standard deviation function to the data aggregation you have just done.
aggregate(Solar.R~Month, airquality, FUN=sd, na.rm=T)

## Exercise 6 – Writing a Function
# Write a function to calculate the hypotenuse of a triangle given the length of the 2 sides. 
#   Remember the hypotenuse is the square root of the sum of the squares - √(a² + b²) 
#     Run the function you have created with different values.
help(sqrt)
calculate_hypotenuse <- function(x, y) {
  z <- sqrt(x^2 + y^2) 
  return(z)
  }
calculate_hypotenuse(3, 5)
calculate_hypotenuse(10, 10)

## Exercise 7 - apply
# 1. Create a numeric vector of length 10. Write an lapply and sapply statement to square each element. 
#   Compare the two outputs.
# 2. Generate a list of length 4 containing both numeric and logical (T/F) vectors. 
#   Write an lapply or sapply statement to calculate the sum of the elements in each vector.
# 3. Write an sapply statement to repeat each element of each vector in your list three times 
#    e.g. 1, 4, 3 would become 1, 1, 1, 4, 4, 4, 3, 3, 3. Assign the output to a new list.

## Exercise 8 - Loops
# 1. Write a for loop that iterates over the numbers 1 to 7 and prints the cube of each number using print().
for (i in 1:7) {
  print(i^3)
}
# 2. Write a for loop that iterates over the column names of the inbuilt iris dataset and 
#    print each together with the number of characters in the column name in parenthesis.
#    Example output: Sepal.Length (12).
#    Use the functions print(), paste0() and nchar(). Look up what these functions do using the help feature.

iris # no need to load/data if the dataset is available
colnames(iris)
iris.cols <- c()
print(paste0(colnames(iris), "(", nchar(i), ")"))
for (i in colnames(iris)) {
 print(paste0(i, "(", nchar(i), ")"))
}
# 3. Write an ifelse loop to print the colours in colours_vector with four characters. 
#   Use nchar()
colours_vector <- c("red", "orange", "purple", "yellow", "pink", "blue")

ifelse(nchar(colours_vector)==4, colours_vector, "not 4")
