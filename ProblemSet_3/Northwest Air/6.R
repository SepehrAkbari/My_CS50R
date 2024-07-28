load("air.RData")

air <- air |>
  select(
    pollutant, emissions
  ) |>
  group_by(pollutant) |>
  summarize(e = sum(emissions)) |>
  ungroup() |>
  arrange(desc(e)) |>
  rename(emissions = "e")

save(air, file = "6.RData")
