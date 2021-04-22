result <- data.frame(a=c(1:5), b=c(6:10))
writeLines(jsonlite::toJSON(result, pretty=TRUE), con=webout)
