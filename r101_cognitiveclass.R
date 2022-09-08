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

