# Example 5.2
m <- 10000
x <- runif(m, 2, 4)
theta_hat <- 2 * mean(exp(-x))
print(theta_hat)
print(exp(-2) - exp(-4))
