source("regression_analysis.r")
# 11.25
# carts <- c(1,2,3,4,5)
# checkout_time <- c(5,11,9,14,16)
# bhat_naught(carts, checkout_time)
# bhat_subone(carts, checkout_time)
# residual_sum_of_squares(carts, checkout_time) / (length(carts) - 2)
# s <- sqrt(residual_sum_of_squares(carts, checkout_time)/(length(carts) - 2))
# t <- bhat_subone(carts, checkout_time) / (s / sqrt(sum_of_squares(carts)))
# t
# t >= qt(.975, df=length(carts)-2)
# 
# c(
#   bhat_naught(carts, checkout_time) + (bhat_subone(carts, checkout_time) * 3) - (qt(0.95,df=length(carts)-2) * s * sqrt((1/length(carts)) + ((3 - mean(carts))^2 / sum_of_squares(carts)))),
#   bhat_naught(carts, checkout_time) + (bhat_subone(carts, checkout_time) * 3) + (qt(0.95,df=length(carts)-2) * s * sqrt((1/length(carts)) + ((3 - mean(carts))^2 / sum_of_squares(carts))))
# )

# 11.29
x <- c(283.5,290,270.5,300.8,310.2,294.6,320)
y <- c(288,291.2,276.2,307,311,299,318)
plot(x,y)
lines(x,bhat_naught(x,y) + (bhat_subone(x,y)*x))
paste('yhat = ', bhat_naught(x,y), '+', bhat_subone(x,y), 'x')
s <- sqrt(residual_sum_of_squares(x,y) / (length(x) - 2))
c(
  bhat_subone(x,y) - (qt(.975,df=length(x)-2) * (s / sqrt(sum_of_squares(x)))),
  bhat_subone(x,y) + (qt(.975,df=length(x)-2) * (s / sqrt(sum_of_squares(x))))
)
