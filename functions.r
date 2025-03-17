a = c(1:5)
a
a[3:5] #including the start and the end

mean(a)
sd(a)
data()

BOD
mean(BOD$Time)
mean(Nile)
hist(Nile)

# Convert inches to cm
convert_IN_CM = function(inch){
  cm = inch*2.54
  return(cm)
}

# testing the function
convert_IN_CM(1)
convert_IN_CM(10)


# Convert cm to inches
convert_CM_to_IN = function(cm){
  inch = cm / 2.54
  return(inch)
}
# testing the function
convert_CM_to_IN(2.54)


