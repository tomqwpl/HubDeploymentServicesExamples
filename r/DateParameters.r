formattedDateRequired <- strftime(dateRequired, "%Y-%m-%d")
formattedDateOptional <- strftime(dateOptional, "%Y-%m-%d")
result <- data.frame(
    formattedDateRequired, formattedDateOptional
)
