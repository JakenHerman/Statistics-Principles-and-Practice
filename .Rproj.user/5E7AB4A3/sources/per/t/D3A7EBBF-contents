source("regression_analysis.r")
# example 2
# a)
distance <- c(3,6,10.5,12,15,18,21,24,27)
count <- c(1845,561,145,127,109,181,72,18,13)
plot(distance,count)

# b)
distance <- log10(distance) 
count <- log10(count)
plot(distance,count)

#c)
b1 <- sum_of_product(distance,count) / sum_of_squares(distance)
b0 <- mean(count) - (b1 * mean(distance))
yhat <- b0 + (b1 * distance)                    
lines(distance, yhat)
