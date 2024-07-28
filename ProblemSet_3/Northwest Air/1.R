air <- read_csv("air.csv")

air <- air |>
  select(
    starts_with("State"),
    POLLUTANT,
    "Emissions (Tons)",
    starts_with("SCC LEVEL")
  ) |>
  rename(
    state = "State",
    county = "State-County",
    pollutant = "POLLUTANT",
    emissions = "Emissions (Tons)",
    level_1 = "SCC LEVEL 1",
    level_2 = "SCC LEVEL 2",
    level_3 = "SCC LEVEL 3",
    level_4 = "SCC LEVEL 4"
  )

save(air, file = "air.RData")
