# This is my first R script 
# Some basic lines, for practice purposes
# Code adapted from w3schools R tutorial

a <- 5
b <- 5
a+b

name <- "John"
age <- 40

name   # output "John"
age    # output 40

text <- "good"
paste("ABC", text)

a1 <- a2 <- a3 <- "Apple"

a1
a2
a3

num2 <- 3.8
ii <- 5L
co <- 1+2i
char <- 'KKT'
l <- TRUE

ii
class(ii)
class(num2)

num3 <- as.numeric(ii)
num3
class(num3)

num4 <- as.complex(ii)
num4
class(num4)

5+5
5-1
5*4

abs(1.54)
abs(1+5i)

sqrt(15)
sqrt(-5)

ceiling(1.2)
floor(1.85)

str <- "This is the test string"
str

strl <- "This is the long test string,
the string is long long long,
long long."
strl
cat(strl)

nchar(str)
nchar(strl)

grepl("This", str)
grepl("this", str)
grepl("this", str, ignore.case = TRUE)
grepl("my", str)

str1 <- "Good"
str2 <- "Morning"
paste(str1, str2)

str3 <- "A&B"
str4 <- "A \" B"
str4
cat(str4)

str5 <- "A\tB"
cat(str5)

100 < 99
100 == 99
100 > 99
100 >= 99

a1 <- 100
a2 <- 99
a1 >= a2

a1 + a2
a1 - a2
a1 * a2
a1 / a2
a1 ^ a2
a1 %% a2
a1 %/% a2

5 %/% 2

aa <- 30
aa <<- 30
30 -> aa
30 ->> aa

10 >= 9 & 8 < 9
10 >= 9 && 8 < 9

x <- 1:10
2 %in% x
11 %in% x

mat1 <- matrix(1:9, nrow=3)
mat1

mat2 <- matrix(1:9, nrow=3, byrow=TRUE)
mat2

mat1 %*% mat2
mat1 * mat2

if (a1 < a2){
  print("a1 is smaller than a2")
}else if (a1 > a2){
  print("a1 is bigger than a2")
}else{
  print("a1 is equal to a2")
}

i <- 1
while (i < 10){
  print(i)
  i <- i+1
}

i <- 1
while (i < 10){
  print(i)
  i <- i+1
  if (i==6){
    break
    }
}

i <- 0
while (i < 10){
  i <- i+1
  if (i==6){
    next
  }
  print(i)
}

for (i in 1:5){
  print(i)
}

for (i in list("A","B","C")){
  print(i)
}

a = c(1, 2, 3, 4, 5, 6)

5 %in% a

l <- list("A","B","C","D")
for (i in l){
  if (i == "B"){
    break
  }
  print(i)
}

l <- list("A","B","C","D")
for (i in l){
  if (i == "B"){
    next
  }
  print(i)
}

print_hello <- function(){
  print("Hello")
}
print_hello()

print_helloname <- function(name){
  print(paste("Hello", name))
}
print_helloname("abc")

print_helloname <- function(name="Guest"){
  print(paste("Hello", name))
}
print_helloname("abc")
print_helloname()

times10 <- function(x){
  return(10*x)
}
times10(10)
times10(5)

print(times10(10))
print(times10(3))

# vector

a <- c(1,2,3)
b <- c(1,5,6)
c <- c('A','B','D')
d <- 1:10
e <- 1.5:3.5
f <- 1.5:3
length(a)
length(d)

sort(c)

a[1] # start from 1
c[c(1,3)]
c[-1] # - indicate exception, except the first one
c[1] <- "C"
c[-1] <- "F"
c[3] <- "B"

g <- rep(a, each=3)
h <- rep(a, times=3)
j <- rep(a, times=c(3,2,1))
k <- rep(a, times=c(3,2,0))

l <- seq(0,10,2)
m <- seq(from=1, to=11, by=1.5)

# list

n <- list("A","B","F","D")
n
n[1]
n[1] <- "BB"
length(n)

"BB" %in% n
"CC" %in% n

n
o <- append(n,"N")
p <- append(o, "ABC", after=2)
q <- p[-3] # remove an item

q[2:4]

for (x in q){
  print(x)
}

r <- c(p,q)
s <- c(p,a)

# matrices

?rep

mat <- matrix(c(1:6), nrow=3,ncol=2)
mat <- matrix(c(1:6), nrow=3, ncol=2, byrow = TRUE)
mat[1,1]
mat[2,1]
mat[3,]
mat[,1]
mat[c(1,2),]

mat1 <- cbind(mat, c(5,6,7)) # add row/column
mat2 <- rbind(mat, c(2,5))

mat3 <- mat1[-c(1),-c(1)]
mat3 <- mat1[-1,-1]

10 %in% mat
2 %in% mat

dim(mat)
dim(mat1)
length(mat)
length(mat1)

nrow(mat)
ncol(mat)

for (i in 1:nrow(mat)){
  for (j in 1:ncol(mat)){
    print(mat[i,j])
  }
}

mat4 <- rbind(mat,mat2)
mat5 <- cbind(mat, mat1)

