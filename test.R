# load packages
# pacman here is to collect a list of libraries
library(pacman)
p_load("dplyr","tidyr","Hmisc")

# load different data types
# .sav file (for SPSS)
library(haven)
data1 <- read_sav("data1.sav")

# load excel file
library(readxl)
data2 <- read_excel("data2.xlsx")

# column names 
names(data1)
names(data2)

# view data
view(data1)
view(data2)

# compare the column names for two dataframes 
# use compare() from waldo library
library(waldo)
compare(names(data1), names(data2))

# mtcars dataset
mtcats <- mtcats
class(mtcars)
head(mtcars,10)
dim(mtcars)
names(mtcars)
colnames(mtcars)
rolnames(mtcars)
as.matrix(mtcars)
mtcars1 <- as.matrix(mtcars)
class(mtcars1)
mtcars2 <- t(mtcars1)

iris <- iris
iris[1:5,]
iris[1:5,c(2,4)]
iris["Sepal.Width",c(2,4)]
iris["60",c(2,4)]
iris[c("60","100"),c(2,4)]
iris[c(60,100),c(2,4)]

which(iris$Sepal.Length==5.7)
iris[which(iris$Sepal.Length==5.7)]
iris[which(iris$Sepal.Length %in% 5.7)]

# merge two dataframes
# merge will remove the labels
merge(x, y, by.x="a", by.y="b")
# instead, use dplyr full_join to keep the labels 
# also there's inner_join, left_join and right_join
library(dplyr)
full_join(x, y, by = joinby("a" == "b"))

# anti_join, find the difference in two tibbles
anti_join(x, y, by = joinby("a" == "b"))

# apply function on multiple columns
mtcars <- mtcars %>%
  mutate(across(everything(), as.integer, .names = "{.col}_num"))



