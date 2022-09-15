# This file contains the code I used in learning R 101 on cognitiveclass.ai
# basic R code lines

# Math Variables and Strings

139+121
260/60
4^2

x <- 139+121
x
y<- x/60
y

x <- x/60
x

rm(y)

total <- 139+121
total_hr <- total/60
total
total_hr

total_hr <- (139+121)/60
total_hr

movie <- "Toy Story"  # or 'Toy Story'
movie

# Vectors and Factors

c(81,125)/60

ratings <- c(81,125)
ratings/60

c(1:10)
c(10:1)  # 10 to 1

c("Toy Story","Akira","City of God")

1997 > 2000

movie_ratings <- c(7.3,8.5,8.3,7.5,6.9,5.2,8.2,8.0,7.9,9.3)
movie_ratings > 7.5

genre_vector <- c("comedy","comedy","Animation","Animation","Crime")
genre_vector
genre_factor <- factor(genre_vector)
genre_factor
summary(genre_vector)
summary(genre_factor)

movielength_vector <- c("Very short","Short","Medium","Short","Long","Very short","Very long")
movielength_factor <- factor(movielength_vector, ordered=TRUE, levels=c("Very short","Short","Medium","Long","Very long"))
movielength_factor
summary(movielength_factor)

# Vector Operations

year <- c(1985,1999,2010,2002)
names(year) <- c("The Breakfact Club","American Beauty","Black Swan","Chicago")
year["Black Swan"]

length(year)
year_sorted <- sort(year)
year_sorted

min(year)
max(year)
which.min(year)

cost_2014 <- c(8.6,8.5,8.1)
sum(cost_2014)/3
sum(cost_2014)/length(cost_2014)
mean(cost_2014)
summary(cost_2014)

cost_2014[2]
cost_2014[c(2,3)]
cost_2014[1:3]

titles <- c("Black Swan","Casino","City of God","Jumanji","Toy Story")
titles[-1]
titles[8]

cost_2014 > 8.3
cost_2014[cost_2014 > 8.3]

age_restric <- c(14,12,10,NA,18,NA)
age_restric

age_restriction <- c(14,16,12,10,18,18)
sequences <- c(2,3,0,2,6,3)

multiply <- age_restriction * sequences
multiply

cost_2014 * 10

head(age_restriction, n=2)
tail(age_restric, n=3)

is.na(age_restric)
!is.na(NA)
!is.na(2)

# Arrays and Matrices

movie_vector <- c("Akira","Toy Story","Room","The Wave","Whiplash","Star Wars","The Ring","The Artist","Jumanji")
movie_array <- array(movie_vector, dim = c(4,3)) # repeat the vector
movie_array
movie_array[1,2]
movie_array[1,]
movie_array[,2]

movie_matrix <- matrix(movie_vector, nrow=3, ncol=3)
movie_matrix
movie_matrix <- matrix(movie_vector, nrow=3, ncol=3, byrow = TRUE)
movie_matrix
movie_matrix[2:3,1:2]

# Lists

movie <- list("Toy Story", 1995, c("Animation","Adventure","Comedy"))
movie
movie[2]
movie[2:3]

movie <- list(name="Toy Story", year=1995, genre=c("Animation","Adventure","Comedy"))
movie
movie$name
movie["genre"]
movie["age"] <- 5
movie
movie$time <- 120
movie

movie["time"] <- NULL
movie

# Data Frames

movies <- data.frame(name = c("Toy Story","Akira","The Breakfast Club","The Artist","Modern Times","Fight Club","City of God","The Untouchables"),
                     year = c(1995, 1998, 1985, 2011, 1936, 1999, 2002, 1987))
movies$name
movies[1]
movies[1,2]
str(movies)
summary(movies)
head(movies)
tail(movies)

movies['length'] <- c(81, 125, 97, 100, 87, 139, 130, 119)
movies

movies <- rbind(movies, c(name="Dr. Strangelove", year=1964, length=94))
movies
movies <- movies[-9,]
movies
movies["length"] <- NULL
movies

# Conditions and Loops

movie_year <- 2002
if (movie_year > 2000){
  print("Movie year is greater than 2000")
}

movie_year <- 1997
if (movie_year > 2000){
  print("Movie year is greater than 2000")
} else {
  print("Movie year is not greater than 2000")
}

1995 < 1987
2016 >= 2015

"Toy Story" == "Toy Story" # single = is used for variable assignments
"Toy Story" != "Toy Story 2"

"Toy Story" == "Toy Story" & 1995 < 1987

years <- c(1995, 1998, 1985, 1936, 1999)
for (yr in years) {
  print(yr)
}

for (yr in years){
  if (yr < 1980) {
    print("Old movie")
  } else {
    print("Not that old")
  }
}

count <- 1
while (count<=5) {
  print(c("Iteration number:", count))
  count <- count +1
}

# Functions in R

ratings <- c(8.7, 6.9, 8.5)
mean(ratings)
sort(ratings)
sort(ratings, decreasing = TRUE)

printHelloWorld <- function(){
  print("Hello World")
}
printHelloWorld()

add <- function(x,y){
  x+y
}
add(2,3)

add <- function(x,y){
  return(x+y)
}
add(2,5)

isGoodRating <- function(rating){
  if (rating < 7){
    return("NO")
  } else {
    return("YES")
  }
}

isGoodRating(6)
isGoodRating(9)

isGoodRating <- function(rating, threshold=7){
  if (rating < threshold){
    return("NO")
  } else {
    return("YES")
  }
}

isGoodRating(8)
isGoodRating(8, threshold = 8.5)

myFunction <- function(){
  y <<- 3
  t <- 2
}

myFunction()
y
x

# Objects and Classes

average_rating <- 8.3
class(average_rating)

movies <- c("Toy Story", "Akira")
class(movies)

logical_vector <- c(TRUE, FALSE, FALSE, TRUE, TRUE)
logical_vector
class(logical_vector)

age_restriction <- c(12,10,18,18)
class(age_restriction)

integer_restriction <- as.integer(age_restriction)
integer_restriction
class(integer_restriction)

year <- as.character(1995)
year

combined <- c("Toy Story", 1995, "Akira", 1998)
combined
class(combined)

mode(combined)

# Debugging

tryCatch(10+10)
tryCatch("a"+10)

tryCatch("a"+10, error=function(e) print("Something went wrong!"))

tryCatch(10+10, error=function(e)
  print("Something went wrong!"))

tryCatch(10+"a", error=function(e)
 return("10a"))

as.integer("A")

tryCatch(as.integer("A"), warning = function(e)
  print("Some warnings."))

# Reading CSV, Excel, and Built-in Datasets
