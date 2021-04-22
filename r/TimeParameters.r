formattedTimeRequired <- strftime(timeRequired, "%Y-%m-%dT%H:%M:%S")
formattedTimeOptional <- strftime(timeOptional, "%Y-%m-%dT%H:%M:%S")
result <- data.frame(formattedTimeRequired, formattedTimeOptional)
