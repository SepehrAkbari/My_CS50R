calculate_growth_rate <- function(years, visitors) {
  # Calculate the difference in visitors between the latest and first year
  visitors_diff <- visitors[length(visitors)] - visitors[1]
  # Calculate the difference in years between the latest and first year
  years_diff <- years[length(years)] - years[1]
  # Calculate the average yearly growth rate
  visitors_diff / years_diff
}

predict_visitors <- function(years, visitors, year) {
  # Calculate the yearly growth rate
  growth_rate <- calculate_growth_rate(years, visitors)
  # Find the number of visitors in the most recent year
  latest_visitors <- visitors[length(visitors)]
  # Find the most recent year
  latest_year <- years[length(years)]
  # Calculate the number of years between the most recent year and the given year
  years_diff <- year - latest_year
  # Predict the number of visitors in the given year
  latest_visitors + (growth_rate * years_diff)
}

visitors <- read.csv("visitors.csv")
year <- as.integer(readline("Year: "))
predicted_visitors <- predict_visitors(visitors$year, visitors$visitors, year)
cat(paste0(predicted_visitors, " million visitors\n"))
