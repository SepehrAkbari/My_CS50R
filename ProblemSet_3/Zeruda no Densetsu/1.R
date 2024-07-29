zelda <- read_csv("zelda.csv")

zelda <- zelda |>
  separate(release, into = c("year", "system"), sep = " - ")

zelda$role <- zelda$role |>
  str_to_lower()

zelda <- zelda |>
  pivot_wider(
    id_cols = c(title, year, system),
    names_from = role,
    values_from = names
  )

save(zelda, file = "zelda.RData")
