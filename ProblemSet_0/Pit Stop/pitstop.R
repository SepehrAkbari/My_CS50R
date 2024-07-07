# Get CSV file as input
fileName <- readline("Enter a CSV file to analyze: ")
race <- read.csv(fileName)

# Get total number of pit stops
print(paste("Total number of pitstops is:",nrow(race)))

# Duration of the shortest pit stop
race$time <- sort(race$time, decreasing = FALSE)
print(paste("Duration of the shortest pitstops is:",race$time[1]))

# Duration of the longest pit stop
race$time <- sort(race$time, decreasing = TRUE)
print(paste("Duration of the longest pitstops is:",race$time[1]))

# Total time spent on pit stops
print(paste("Total time spent on pit stops is:",sum(race$time)))
