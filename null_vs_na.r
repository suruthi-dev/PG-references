a ="sai"
a

# NA vs NULL

# NA is "missing" from a statistical perspective 

income = c(100,106,105,58,89,NA,90,79,NA,101)
length(income)

mean(income) # returns NA  because there is a NA in one of the values

mean(income, na.rm = T) # ignore the NA

age = c(23,25,26,NULL,31,29,41,27,32,22,30)
length(age) # but there are 11 elements in age

mean(age)  

# R views NULL values as truly non-existent
# But NAs take on the mode (Datatype) of the vector

# checking the mode of NA and NULL Containing vectors
mode(income[6])  # which is actually NA
mode(age[4]) # but it is not referring to the NULL element, if we take a look at what the 4th element is 
age[4]

# R doesnot see NULL
# NAs are missing values in Stat

# NULL could be used as placeholder

empty_vec = c(NULL)

for (i in 1:10) if (i<8) empty_vec = c(empty_vec,i)
empty_vec

# printing the length of the vectors containing NA and NULL

null_vec = c(NULL)
length(null_vec)

na_vec = c(NA)
length(na_vec)
na_vec
mode(na_vec)

# NA alone has no inherent data type.
# By default, NA is treated as logical NA (NA in a logical vector means "unknown true/false").
# Since no other type is specified, na_vec is a logical vector.


x1 = c(NA)          # Default logical NA
x2 = c(NA_real_)    # Numeric NA (real number)
x3 = c(NA_integer_) # Integer NA
x4 = c(NA_character_) # Character NA

mode(x1)  # "logical"
mode(x2)  # "numeric"
mode(x3)  # "numeric" (integers are stored as numeric mode)
mode(x4)  # "character"

