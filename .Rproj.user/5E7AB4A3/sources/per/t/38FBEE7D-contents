sum_of_squares <- function (s) {
  sum <- 0
  for(i in s) {
    sum <- sum + ((i - mean(s))^2)
  }
  sum
}

sum_of_product <- function (i, j) {
  sum <- 0
  for(k in 1:length(i)) {
    sum <- sum + ((i[k] - mean(i))*(j[k] - mean(j)))
  }
  sum
}

bhat_subone <- function (x, y) {
  sum_of_product(x, y) / sum_of_squares(x)
}

bhat_naught <- function (x, y) {
  mean(y) - (bhat_subone(x, y) * mean(x))
}

residuals <- function (x, y) {
  y - bhat_naught(x, y) - (bhat_subone(x, y) * x)
}

residual_sum_of_squares <- function (x, y) {
  sum <- 0
  for(i in residuals(x, y)) {
    sum <- sum + i^2
  }
  sum
}
