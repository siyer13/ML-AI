library("caret")

##################################
## Read file and create dataset ##
##################################

# filename
filename <- "data/iris.csv"

# load the csv file from local directory
dataset <- read.csv(filename, header=FALSE)

colnames(dataset) <- c("Sepal.Length","Sepal.Width","Petal.Length","Petal.Width","Species")

# test if the file loaded properly
head(dataset)

################################
## create validation dataset  ##
################################


# create a list of 80% of the rows in the original dataset we can use for training
validation_index <- createDataPartition(dataset$Species, p=0.80, list=FALSE)
#select 20% of the data for validation
validation <- dataset[-validation_index,]
# use the remaining 80% of data to training and testing the models
dataset <- dataset[validation_index,]


## Summarize dataset

# dimensions of dataset
dim(dataset)
# list types of each attributes
sapply(dataset,class)

levels(dataset$Species)

#summarize the class distribution
percentage <- prop.table(table(dataset$Species)) * 100
cbind(frequency=table(dataset$Species), percentage=percentage)

summary(dataset)

# visualize dataset

# split input and output

x <- dataset[,1:4]
y <- dataset[,5]

# boxplot for each attribute on one image

par(mfrow=c(1,4))
  for(i in 1:4) {
    boxplot(x[,i], main=names(iris)[i])
  }

# barplot for class breakdown
plot(y)

# multivariate plots
# scatterplot matrix
featurePlot(x=x, y=y, plot = "ellipse")
