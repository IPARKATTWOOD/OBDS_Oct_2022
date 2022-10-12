## Extra Activity – Indexing vectors
movie <- c("Whatever Works", "It Follows", "Love and Mercy", "The Goonies", "Jiro Dreams of Sushi", "There Will be
Blood", "Moon", "Spice World", "Serenity", "Finding Vivian Maier")
year <- c("2009","2015","2015","1985","2012","2007","2009","1988","2005","2014")
boxoffice <- c(35,15,15,62,3,10,321,79,39,1.5)
genre <- c("Comedy","Horror","Drama","Adventure","Drama","SciFi","Comedy","Documentary","SciFi","Documentary")

# 1. What is the name of the 10th movie in the list?
movie[10]
# 2. What are the genres of the first 4 movies?
genre[1:4]
# 3. Some joker put Spice World in the movie names – it should be 'The Naked Gun’ Please correct the name.
movie <- c("Whatever Works", "It Follows", "Love and Mercy", "The Goonies", "Jiro Dreams of Sushi", "There Will be
Blood", "Moon", "The Naked Gun", "Serenity", "Finding Vivian Maier")
# 4. What were the names of the movies made before 1990?
movie[year < 1990]
# 5. What were the names of the Comedy movies? What were their boxoffice totals? (Two separate questions)
movie[ genre=="Comedy"]
boxoffice[genre=="Comedy"]
# 6. What is the names of the movie that made less than $50 Million dollars AND was a Documentary?
movie[boxoffice < 50 & genre=="Documentary"]


## Extra Activity – Scalars and Vectors
# Create the vector 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 in three ways: once using c(), once using a:b, and once using seq().
a <- c(1:10)
b <- 1:10
c <- seq(from = 1, to = 10, by = 1)
# Create the vector 2.1, 4.1, 6.1, 8.1 in two ways, once using c() and once using seq()
d <- c(2.1, 4.1, 6.1, 8.1)
e <- seq(from = 2.1, to = 8.1, by = 2)
#Create the vector 0, 5, 10, 15 in 3 ways: using c(), seq() with a by argument, and seq() with a length.out argument.
f <- c(0,5,10,15)
g <- seq(from = 0, to = 15, by = 5)

h <- seq(from = 0, to = 15, by = (to = from)/3, length.out) ###### not sure how to 

# Create the vector 101, 102, 103, 200, 205, 210, 1000, 1100, 1200 using a combination of the c() and seq() functions
i <- c(101:103, seq(from = 200, to = 210, by = 5), 1000, 1100, 1200)
# Create a vector that repeats the integers from 1 to 5, 10 times. That is [1, 2, 3, 4, 5, 1, 2, 3, 4, 5, …]. 
#   The length of the vector should be 50!
j <- rep(1:5, times=10); j
# Now, create the same vector as before, but this time repeat 1, 10 times, then 2, 10 times, etc., 
#   That is [1, 1, 1, …, 2, 2, 2, …, … 5, 5, 5]. 
#   The length of the vector should also be 50
j <- rep(j, each=1, times=10); j.  ###### not sure how to 

## Extra Activity – Working with data frames
vector1 <- 1:10
vector2 <- letters[1:10]
vector3 <- rnorm(10, sd = 10)
df <- data.frame(vector1, vector2, vector3, stringsAsFactors = FALSE)
str(df)
# We can see that the data frame df contains 10 observations for three variables.
# 1. Look up the function rnorm() – what does it do?
# 2. What does stringsAsFactors mean?
# 3. One can select columns from a data frame using either the name or the position. Use both methods to print the last two columns from the df data frame
# 4. Print all letters in the vector2 column of the data frame where the vector3 column has a positive value
# 5. Look up the function paste(). Create a new vector combining the all columns of df separated by a underscore.