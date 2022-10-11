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
a <- c(1:200); a
b <- a*123; b
"/project/obds/ipark/2_baseR/projects/week2_day2/"
b[44]
b_sub <- b[1:15]; b_sub 
b_sub <- c(b_sub, 24108,24231); b_sub
c <- c('actb', 100, 3.4); c 
c[2]
c[2]*4
character <- c(fruits="apple", fruits="banana", flowers="wisteria", vegetables="onion", meat="beef")
character
names(character)
character <- c(fruits=c("apple","banana"), flowers="wisteria", vegetables="onion", meat="beef")
names(character)
attributes(character)
character[names(character) == "fruits"]
cbind(1:5, 6:10, 11:15)
rbind(1:5, 6:10, 11:15)
x <-  matrix(1:9, nrow = 3); x
x[2,3]
y <-matrix(1:12, nrow = 3, byrow = T); y
colnames(y) <- c("first", "second" , "third", "fourth"); y
row.names(y) <- c("row1", "row2", "row3"); y
myarray <- array(1:24, dim = c(4,2,3)); myarray
myarray[3,2,2]
last_matrix <- myarray[,,3]; last_matrix
a <- list(myarray, 4, "exercise", y, TRUE); a
a[[5]]; a[[3]]
a[c(3,5)]
dim(a)
dim(y)

# activity 4
bed_file <- read.table("/project/obds/shared/resources/2_r/baseR/coding_gene_region.bed", header=F, sep="\t")
dim(bed_file)
head(bed_file)
tail(bed_file)
class(bed_file)
nrow(bed_file)
ncol(bed_file)
colnames(bed_file) <- c("chr", "start", "stop", "name", "score", "strand")
head(bed_file)
colnames(bed_file)
names(bed_file)
bed_file[30,3]
col_2 <- bed_file[,2]
col_2b <- bed_file$start
bed_file$int_length <- bed_file$stop - bed_file$start
head(bed_file)
bed_subset <- bed_file[bed_file$int_length >= 100001 & bed_file$int_length <= 200000,]
write.table(bed_subset, "intervals100kto200k.txt", sep="\t", quote=F, row.names=F)
