# Example 6.1
n <- 1
m <- 1000
theta_hat <- numeric(m)
for (j in 1:m) {
    x1 <- rnorm(n)
    x2 <- rnorm(n)
    theta_hat[j] <- mean(abs(x1 - x2))
}
print(mean(theta_hat))
print(sqrt(sum((theta_hat - mean(theta_hat))^2) / (m - 1)) / sqrt(m))