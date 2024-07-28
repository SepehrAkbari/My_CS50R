load("air.RData")

air <- air |>
  group_by(level_1, pollutant) |>
  summarize(e = sum(emissions)) |>
  ungroup() |>
  rename(
    source = "level_1",
    emissions ="e"
    )

save(air, file = "7.RData")
