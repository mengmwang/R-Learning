# This file contains the code I used in learning R 101 on cognitiveclass.ai
# basic R code lines

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
