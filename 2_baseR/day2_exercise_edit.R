# Activity 1 
1 + 1 # calculate
3*239/4 # calculate
10>20 # true or false
x <- 100 
x <- "inhye"; x
a <- c(1,2,3,4); a
boat.names <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j")
boat.colors <- c("black", "green", "pink", "blue", "blue", "green", "green", "yellow",
                 "black", "black")
boat.ages <- c(143, 53, 356, 23, 647, 24, 532, 43, 66, 86)
boat.prices <- c(53, 87, 54, 66, 264, 32, 532, 58, 99, 132)
boat.prices[1]
boat.ages[1:5]
boat.names[boat.colors == "black"]
boat.prices[boat.colors == "green" | boat.colors == "yellow"]
sum(boat.colors == "pink")
sum(boat.colors == "green")

# Activity 2
# Make a vector called ‘a’ of numbers 1 to 200
a <- c(1:200); a
# Multiply each element of the vector by 123 and save to a new object called ‘b’
b <- a*123; b
"/project/obds/ipark/2_baseR/projects/week2_day2/"
# Extract the 44th element
b[44]
# Extract the first 15 elements and assign to new variable b_sub
b_sub <- b[1:15]; b_sub 
# Add the numbers 24108 and 24231 to the object b_sub
b_sub <- c(b_sub, 24108,24231); b_sub
# Try making a vector of the following
c <- c('actb', 100, 3.4); c 
# Extract the second element of this vector.
c[2]
# Multiply the second element (100) by 4. Did this work? Why? because it is a character
c[2]*4
# Generate a character vector with 4 items and assign names(attributes) to the element
character <- c(fruits="apple", fruits="banana", flowers="wisteria", vegetables="onion", meat="beef")
character
names(character)
character <- c(fruits=c("apple","banana"), flowers="wisteria", vegetables="onion", meat="beef")
names(character)
attributes(character)
character[names(character) == "fruits"]
cbind(1:5, 6:10, 11:15)
rbind(1:5, 6:10, 11:15)

# Activity 3
# 1. Create a matrix of numbers 1-9 of dimensions 3x3
x <-  matrix(1:9, nrow = 3); x
# 2. Extract the number ‘8’
x[2,3]
# 3. Create a matrix of numbers with 4 columns and 3 rows, filled by row.
y <-matrix(1:12, nrow = 3, byrow = T); y
# 4. Add column and row names to this matrix.
colnames(y) <- c("first", "second" , "third", "fourth"); y
row.names(y) <- c("row1", "row2", "row3"); y
# Create an array of numbers 1-24 in 4 rows, 2 columns, 3 dimensions.
myarray <- array(1:24, dim = c(4,2,3)); myarray
# Extract the number ‘15’
myarray[3,2,2]
# Extract the last matrix in the array and save to a new object called last_matrix
last_matrix <- myarray[,,3]; last_matrix
# Create a list of 5 items of multiple data types.
a <- list(myarray, 4, "exercise", y, TRUE); a
# Extract 3rd and 5th item in the list.
a[[5]]; a[[3]]
a[c(3,5)]
dim(a)
dim(y)

# activity 4

# 1. Load the coding_gene_region.bed into R.
bed_file <- read.table("/project/obds/shared/resources/2_r/baseR/coding_gene_region.bed", header=F, sep="\t")
# 2. Check the dimensions of the dataframe and the class of each variable.How many rows and columns are there in this dataframe?
dim(bed_file)
head(bed_file)
tail(bed_file)
class(bed_file)
nrow(bed_file)
ncol(bed_file)
# 3. Add column names.
colnames(bed_file) <- c("chr", "start", "stop", "name", "score", "strand")
# 4. Display the new columns names.
head(bed_file)
colnames(bed_file)
names(bed_file)
# 5. Extract the element at row 30, column 3
bed_file[30,3]
# 6. Extract the second column by index and by name (using both [ ] and $ ), assign these to new variables
col_2 <- bed_file[,2]
col_2b <- bed_file$start
# 7. Calculate the intervals (start-stop) and add them as a new column called int_length.
bed_file$int_length <- bed_file$stop - bed_file$start
# What is a quick way to check you have added this column?
head(bed_file)
# 8. Subset the data frame to contain only regions with a length from 100,001-200,000 bp. - assign to a new variable.
bed_subset <- bed_file[bed_file$int_length >= 100001 & bed_file$int_length <= 200000,]
# 9. Write your subsetdata frame to a tab separated file ie (include column names but not rownames)
write.table(bed_subset, "intervals100kto200k.txt", sep="\t", quote=F, row.names=F)
