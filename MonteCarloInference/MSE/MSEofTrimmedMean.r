# Example 6.2
n <- 20
m <- 1000
theta_hat <- numeric(m)
for (j in 1:m) {
    x <- rnorm(n)
    x_trimmed <- sort(x)[2:(n - 1)]
    theta_hat[j] <- mean(x_trimmed)
}
mse <- mean(theta_hat^2)
print(mse)
print(sqrt(sum((theta_hat - mean(theta_hat))^2)) / m)