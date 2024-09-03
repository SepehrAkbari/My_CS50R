# Load necessary packages
library(readr)
library(stringr)
library(dplyr)
library(ggplot2)

# Step 1: Read and clean the lyrics file
file_path <- "lyrics/beatles.txt"  # Update this with your actual file path
lyrics <- read_file(file_path)

# Convert to lowercase and remove punctuation
cleaned_lyrics <- lyrics %>%
  str_to_lower() %>%
  str_replace_all("[[:punct:]]", " ")

# Split into a vector of words
words <- str_split(cleaned_lyrics, "\\s+")[[1]]
words <- words[words != ""]

# Step 2: Create a data frame with word frequencies
word_freq <- data.frame(table(words))
colnames(word_freq) <- c("word", "frequency")
word_freq <- word_freq %>%
  arrange(desc(frequency))

# Step 3: Visualize the word frequencies
plot <- ggplot(word_freq, aes(x = reorder(word, -frequency), y = frequency)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(title = "Word Frequency in Lyrics",
       x = "Word",
       y = "Frequency") +
  theme_minimal()

# Display the plot
print(plot)

# Step 4: Save the plot in the same directory as parked.R
ggsave("lyrics.png", plot = plot, width = 10, height = 7, dpi = 300)
