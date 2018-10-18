die <- 1:6
sample(x=die, size=2) 
# the above is not accurate as the sample is without replacement
# die should be independent of the previous one
sample(x=die, size=2, replace=TRUE)
