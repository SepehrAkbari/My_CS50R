d2020 <- read.csv("2020.csv")
d2021 <- read.csv("2021.csv")
d2022 <- read.csv("2022.csv")
d2023 <- read.csv("2023.csv")
d2024 <- read.csv("2024.csv")

data_frames <- list(d2020 = d2020, d2021 = d2021, d2022 = d2022, d2023 = d2023, d2024 = d2024)

add_happiness_column <- function(df) {
  numeric_columns <- sapply(df, is.numeric)
  df$happiness <- round(apply(df[ , numeric_columns], MARGIN = 1, FUN = sum), 2)
  return(df)
}

data_frames <- lapply(data_frames, add_happiness_column)

d2020 <- data_frames$d2020
d2021 <- data_frames$d2021
d2022 <- data_frames$d2022
d2023 <- data_frames$d2023
d2024 <- data_frames$d2024

country <- readline("Country: ")

results <- c()

for (name in names(data_frames)) {
  df <- data_frames[[name]]
  year <- substring(name, 2)
  if (country %in% df[, 1]) {
    row_index <- which(df[, 1] == country)
    happiness_value <- df$happiness[row_index]
    if (is.na(happiness_value)) {
      result <- paste(country, " (", year, "): unavailable", sep = "")
    } else {
      result <- paste(country, " (", year, "): ", happiness_value, sep = "")
    }
  } else {
    result <- paste(country, " (", year, "): unavailable", sep = "")
  }
  results <- c(results, result)
}

for (result in results) {
  cat(result, "\n")
}
