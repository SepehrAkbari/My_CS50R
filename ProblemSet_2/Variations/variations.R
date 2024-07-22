random_character <- function() {
  # TODO: Return one random letter
  x <- 1:26
  cat(letters[sample(x)[1]])
}

print_sequence <- function(length) {
  # TODO: Print a random sequence of specified length
  i <- 0
  while (i < 20) {
    random_character()
    Sys.sleep(0.25)
    i <- i + 1
  }
}

print_sequence()
