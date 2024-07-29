load("zelda.RData")

zelda <- zelda |>
  group_by(title) |>
  filter(year == min(year)) |>
  ungroup()

zelda <- zelda |>
  arrange(year, title, system)

save(zelda, file = "3.RData")
