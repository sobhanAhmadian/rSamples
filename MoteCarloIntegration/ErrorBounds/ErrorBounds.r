# Example 5.5
x <- 0
m <- 10000
z <- rnorm(m)
g <- (z < x)
v <- mean((g - mean(g)^2)) / m
cdf <- mean(g)
print(c(v, cdf))
print(c(cdf - 1.96 * sqrt(v), cdf + 1.96 * sqrt(v)))