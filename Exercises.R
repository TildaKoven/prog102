#Exercises:
#Writing Functions in R:

#Exercise 1:
first_and_last <- function(s) {
  first_char <- substr(s, 1, 1)
  last_char <- substr(s, nchar(s), 1)
  result <- paste(first_char, last_char)
  return(result)
}
# name is first_and_last
# keyword function is function()
# parameter is s
# body is the first_char and last_char and result stuff
# return output is return(result)

#Exercise 2:

# increment:
function(x){
  result <- x + 1
  return(result)
}

# double
function(a){
  result <- a*2
  return(result)
}

# hypotenuse_length
function(a, b){
  c_squared <- a^2 + b^2
  result <- sqrt(c_squared)
  return(result)
}


# Exercise 3:
# Write a function that turns a vector into a palindrome. For example, it
#should turn 1 2 3 into 1 2 3 3 2 1. Hint: you’ll have to use a function
# called rev(). Choose a short but descriptive name for your function.

palindrome <- function(x) {
  reversed <- rev(x)
  print(reversed)
}
palindrome("word")
rev("word")
x <- 1, 2, 3
sort(x, decreasing = FALSE)
rev(sort(x, decreasing = FALSE))

make_palindrome <- function(vec) {
  c(vec, rev(vec[-1]))
}

make_palindrome("abc")
# How Function Execute
# Exercise 1

fish_mass <- 5
temperature <- 20
fish_growth <- function(mass, temp) {
  growth <- 2 + 0.2 * temp
  mass <- mass + growth
  return(mass)
}
fish_growth(fish_mass, temperature)
# code returns 11

fish_mass <- 6
temperature <- 20
fish_growth <- function(mass, temp) {
  growth <- 2 + 0.2 * temp
  mass <- mass + growth
  return(mass)
}
fish_growth(fish_mass, temperature)
# If initial fish mass is 6, fish growth is 12

fish_mass <- 5
temperature <- 20
fish_growth <- function(mass, temp) {
  growth <- 3 + 0.2 * temp
  mass <- mass + growth
  return(mass)
}
fish_growth(fish_mass, temperature)
# if growth is 3 + 0.2*temp, code yields 12

# Exercise 2:
calc_volume <- function(height, width, depth) {
  area <- height * width
  volume <- area * depth
  return(volume)
}
vol <- calc_volume(3, 5, 1)
area
# Because area is only defined in the function, it will not appear as
# a defined term outside the "black box" and gives us the error of not found

# Default and Named Parameters
# Exercise 1
data <- c(1, NA, 3, 4)
mean(data, na.rm = TRUE)
max(data, na.rm = TRUE)
#The parameter na.rm excludes the na values. It's automatic value is = TRUE.
