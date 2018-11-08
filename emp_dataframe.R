# create the data frame

emp.data <- data.frame(emp_id = c(1:5),
                       emp_name = c('Rick', "Dah", "Michele", "Ryan", "Gary"),
                       salary = c(6445.6, 2342.2, 9093.2, 5000.0, 4352.2),
                       start_date = as.Date(c("2012-01-04","2013-09-23", "2014-11-15", "2014-05-11",
                                              "2015-03-27")),
                       stringsAsFactors = FALSE)

# Print the data frame
print(emp.data)
