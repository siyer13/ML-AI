# filename
filename <- "data/iris.csv"

# load the csv file from local directory
dataset <- read.csv(filename, header=FALSE)

# test if the file loaded properly
head(dataset)


colnames(dataset) <- c("Sepal.Length","Sepal.Width","Petal.Length","Petal.Width","Species")

head(dataset)
