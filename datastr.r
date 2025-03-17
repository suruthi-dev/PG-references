# Data Types and stuctures

# 1. numeric datatype
# 2. character datatype
# 3. integer
# 4. logical
# 5. complex

# R doesnot have scalars

x <- 7
is.vector(x)

a <- c(1:5)
b <- a*x
b

# mode is the term for datatype 
# mode() function calls the type of data we work with()

mode(b)

# ------------------------------------------------------------------
# String functions

names = c("Homer", "Lisa", "Maggie","Marge","Bart")
mode(names)

# If we mix numeric and character we get character
names = c("homer",'lisa',2)
mode(names[3])

first = 'homer'
last = 'simpson'

full = paste(first,last)  
full  #"homer simpson"     #default for paste function is to have a space

full = paste(first,last, sep = '') # character string to separate the terms.
full

# ?paste

full = paste(first,last, sep = '-') # character string to separate the terms.
full

nameSplit = strsplit(full, split = '-') # split -> split by condition
nameSplit # returns as list 
mode(nameSplit)

# ------------------------------------------------------------------

# List is a group of different datatypes, a list can hold variety of objects
# eg a list can hold both character and numeric vectors too

mylist = list(a,b,names,full)
mylist

# reference the list [[]]
mylist[[2]]

# The best practice is to assign name to each part of the list
mylist2 = list(age=a, years=b, names = names )
mylist2

mylist2[[1]]
mylist2[1]

# referencing the list
mylist2$years

chart = hist(Nile)
mode(chart)

# to know the parts inside the hist() using str
# str() stands for structure

str(chart)
chart$counts
# ------------------------------------------------------------------

# matrix - we can combine rows and columns

GDP = c(1200,1300,1100)
income = c(43,102,63)

# matrix based on row
row_matrix = rbind(GDP, income)
row_matrix

# matrix based on column
col_matrix = cbind(GDP, income)
col_matrix

mat = matrix(GDP,nrow = 2,ncol = 2,byrow = 1)
mat

a = matrix(c(1:9), nrow = 3, ncol = 3 )
a
rownames(a) = c("a",'b','c')
colnames(a) = c("d",'e','f')
a

# special matrices in R matrix(k,nrow,ncol)
constant_mat = matrix(5,nrow = 3,ncol = 3,dimnames = list(c("r1",'r2','r3'),
                                                          c('c1','c2','c3')))
constant_mat

identity_mat = diag(1,nrow=3,ncol=3) # Diagonal matrix - identity
identity_mat

diagonal_mat = diag(c(1,2,3), nrow=3,ncol=3)
diagonal_mat

a

a[3,3] = 100
a

# Matrix concatenation
row_bind = rbind(constant_mat,identity_mat)
row_bind

col_bind = cbind(constant_mat,identity_mat)
col_bind

# Dimension inconsistency while concatenation
temp = matrix(c(1:4),2,2)
temp

rbind(constant_mat,temp)
cbind(constant_mat,temp)


a = constant_mat
new = c(0,0,0)
a = rbind(a[1,,drop=F],new, a[2:3,])
a

# By default, R simplifies the result when subsetting a matrix or data frame. This means:
# Selecting a single row (a[1,]) converts it into a vector.
# Selecting a single column (a[,1]) converts it into a vector.
# Setting drop = FALSE prevents this behavior, ensuring that the result remains a matrix or a data frame.

b = constant_mat
b = cbind(b[,1,drop=F],new,b[,2:3])
b

# Deletion of rows and column in matrix

diagonal_mat
diagonal_mat[-2,]
diagonal_mat[,-2]

# ------------------------------------------------------------------
# data frame

country = c("USA","India","UK")

df = data.frame(country, GDP, income)
df
View(df)

# ------------------------------------------------------------------
x = vector(length = 2, mode = 'numeric')
x[1] = 1
x[2] = 2
x
# ------------------------------------------------------------------
# Re-cycling 
c(1,2,3) + c(10,100,10,100)

c(1,2,3) + c(2,4,6,8,10,12,14)


m = matrix(c(1:6), nrow = 3, ncol = 3)
m

new = m+c(10,20)
new
# ------------------------------------------------------------------
# seq
x = seq(from = 1,to = 10)
x

# by -> different increments
x = seq(from = 1,to = 10,by=2)
x

x = seq(from = 1,to = 10, by=0.5)
x

x = seq(from = 1,to = -10, by=-1)
x

seq(1,100, by=10) # increment by 10, stepsize=10
seq(1,100, length.out=10) # I need the total length to be 10 
# here the step size is automatically calculated
# (to-from) / (length.out-1)
# (100-1) / (10-1)

seq(3,10,length.out=5)
# (10-3) / (5-1)

# seq() can be used to avoid empty vector issues

a = c()
a

for (i in 1:length(a)){
  print(i)
}

for(i in seq(a)){
  print(i)
}

a = c(2:5)
a

# this will return the index
for(i in seq(a)){
  print(i)
}

# to actually return the values
for(i in seq(a)){
  print(a[i])
}

# ------------------------------------------------------------------
# repeat function
# rep(value, times)

x = rep(5,10)
x

y = c(6,12,18)
z = rep(y,3)
z
is.vector(z)
z[6]

# To repeat each element  n times 
z1 = rep(y,each=3)
z1

z1 = rep(y,each=3,3)
z1
