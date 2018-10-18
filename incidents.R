library("ggplot2")

incidents <- replicate(10,roll())
incidents
x <- c(1,6,3,3,3,6,5,2,4,6)
y <- c(1,6,6,3,4,4,5,5,5,6)

qplot(x,y)