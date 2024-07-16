f <- readline("Would you like a Light or Bold flavor? ")
c <- readline("Would you like caffeine? ")

if (f == "Light" & c == "Yes") {
  print("green tea")
} else if (f == "Bold" & c == "Yes") {
  print("black tea")
} else if (f == "Light" & c == "No") {
  print("chamomile tea")
} else if (f == "Bold" & c == "No") {
  print("rooibos tea")
} else {
  print("Please enter either 'Bold' or 'Light' for flavor, and just a 'Yes' or 'No' for caffeine")
}
