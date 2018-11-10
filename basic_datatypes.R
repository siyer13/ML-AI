# In R programming, the very basic data types are the R-objects called vectors
# they hold elements of different classes

# create a vector

apple <- c('green', 'red', 'yellow')
print(apple)
print(class(apple))

#List
# A list is an R-object which can contain many different types of elements 
# inside it like vectors, functions and even another list inside it.

#create a list

mylist <- list(c(1,2,3),2.3,"hello")
print(mylist)
print(class(mylist))

# Matrices
# A matrix is a two-dimensional rectangular data set. 
# It can be created using a vector input to the matrix function.

# create a matrix
M = matrix( c('a','a','b','c','b','a'), nrow = 3, ncol = 2, byrow = TRUE)
print(M)