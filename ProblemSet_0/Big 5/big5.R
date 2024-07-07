answers <- read.table(
  "tests.tsv",
  sep="\t",
  header=TRUE
)

answers$gender <- factor(
  answers$gender,
  labels = c("Unanswered", "Male", "Female", "Other")
)

answers$extroversion <- round((answers$E1 + answers$E2 + answers$E3) / 15, 2)
answers$neuroticism <- round((answers$N1 + answers$N2 + answers$N3) / 15, 2)
answers$agreeableness <- round((answers$A1 + answers$A2 + answers$A3) / 15, 2)
answers$conscientiousness <- round((answers$C1 + answers$C2 + answers$C3) / 15, 2)
answers$openness <- round((answers$O1 + answers$O2 + answers$O3) / 15, 2)

write.csv(answers, "analysis.csv")
