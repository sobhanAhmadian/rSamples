# Example 6.3
m <- 1000
n <- 20
count <- n / 2 - 1
mse <- matrix(0, n / 2, 6)

trimmed_mean <- function(k, p) {
    theta_hat <- numeric(m)
    for (i in 1:m) {
        sigma <- sample(c(1, 10), size = n, replace = TRUE, prob = c(p, 1 - p))
        x <- rnorm(n, mean = 0, sd = sigma)
        trimmed_x <- sort(x)[(k + 1):(n - k)]
        theta_hat[i] <- mean(trimmed_x)
    }
    mse_hat <- mean(theta_hat^2)
    se_mse <- sqrt(mean((theta_hat - mean(theta_hat))^2)) / sqrt(m)
    return(c(mse_hat, se_mse))
}

for (k in 0:count) {
    mse[k + 1, 1:2] <- trimmed_mean(k = k, p = 1.0)
    mse[k + 1, 3:4] <- trimmed_mean(k = k, p = .95)
    mse[k + 1, 5:6] <- trimmed_mean(k = k, p = .9)
}

print(mse)