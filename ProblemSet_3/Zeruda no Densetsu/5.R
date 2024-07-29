load("zelda.RData")

zelda <- zelda |>
  filter(str_count(producers, ",") + 1 >= 2) |>
  group_by(title) |>
  filter(year == min(year)) |>
  ungroup()

zelda <- zelda |>
  arrange(year, title, system)

save(zelda, file = "5.RData")
