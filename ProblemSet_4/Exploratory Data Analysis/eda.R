# Example data
months <- c("January", "February", "March", "April", "May", "June", "July", "August")
weight <- c(85, 84, 83, 82, 81, 80, 79, 78)  # Your weight over the months


# Load necessary package
library(ggplot2)

# Create a data frame
fitness_data <- data.frame(months, weight)

# Create a line plot
plot <- ggplot(fitness_data, aes(x = months, y = weight)) +
  geom_line(color = "blue", size = 1.2) +
  geom_point(size = 3, color = "red") +
  labs(title = "Weight Progress Over Time",
       x = "Month",
       y = "Weight (kg)") +
  theme_minimal()

# Display the plot
print(plot)

# Save the plot as visualization.png
ggsave("visualization.png", plot = plot, width = 10, height = 7, dpi = 300)
