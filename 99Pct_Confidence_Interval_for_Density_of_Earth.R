library(distributions3)
masses <- c(
  5.36, 5.63, 5.27, 5.46,
  5.29, 5.29, 5.39, 5.30,
  5.58, 5.44, 5.42, 5.75,
  5.65, 5.34, 5.47, 5.68,
  5.57, 5.79, 5.63, 5.85,
  5.53, 5.10, 5.34
)

t <- StudentsT(df = length(masses)-1)
lower <- mean(masses) - (quantile(t, 1 - .01 / 2) * (sd(masses) / sqrt(length(masses))))
upper <- mean(masses) + (quantile(t, 1 - .01 / 2) * (sd(masses) / sqrt(length(masses))))

print(paste("(", lower, ", ", upper, ")"))
