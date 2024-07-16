# Loading the data
authors <- read.csv("authors.csv")
books <- read.csv("books.csv")

# Finding the Writer's book
writer <- books[books$author == "Mia Morgan", ]
print(writer$title)

# Finding the Musician's book
musician <- books[books$topic == "Music" & books$year == 1613, ]
print(musician$title)

# Finding the Traveler's book
traveler <- books[(books$author == "Lysandra Silverleaf" | books$author == "Elena Petrova") & books$year == 1775, ]
print(traveler$title)

# Finding the Painter's book
painter <- books[(books$topic == "Art") & (books$pages >= 200 & books$pages <= 300) & ((books$year == 1990 | books$year == 1992) & !(books$year == 1991)), ]
print(painter$title)

# Finding the Scientist's book
scientist <- books[grepl("Quantum Mechanics",books$title), ]
print(scientist$title)

# Finding the Teacher's book
ZenthiaAuthors <- authors[authors$hometown == "Zenthia", ]
teacher <- books[(books$year >= 1700 & books$year <= 1799) & (books$author %in% ZenthiaAuthors$author), ]
print(teacher$title)
