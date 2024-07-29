load("zelda.RData")

zelda <- zelda |>
  filter(str_detect(producers, "Shigeru Miyamoto")) |>
  group_by(title) |>
  filter(year == min(year)) |>
  ungroup()

zelda <- zelda |>
  arrange(year, title, system)

save(zelda, file = "4.RData")
