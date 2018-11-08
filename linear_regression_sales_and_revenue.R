sales <- c(100,200,120,330,120,40,76,34,178,190,240)
revenue <- c(10,20,12,33,12,9,8,4,18,15,14)
plot(sales,revenue,col="blue", main="sales and revenue", abline(lm(revenue~sales)))

relation <- lm(revenue~sales)
print(relation)

expected_sales <- data.frame(sales = 1500)
expected_revenue <- predict(relation,expected_sales)
cat("Expected Revnue is: ", expected_revenue)
