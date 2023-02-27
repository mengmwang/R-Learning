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
