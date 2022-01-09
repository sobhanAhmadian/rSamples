n <- 16
B <- 10000
R <- 200
alpha <- 0.05
x <- rnorm(n, mean = 2, sd = sqrt(2))

boot_se <- function(x) {
    x <- as.matrix(x); m <- nrow(x)
    th <- replicate(R, expr = {
        i <- sample(1:m, size = m, replace = TRUE)
        var(x[i])
    })
    return(sd(th))
}

theta_hat <- numeric(B)
se <- numeric(B)
for (b in 1:B) {
    j <- sample(1:n, size = n, replace = TRUE)
    x_bar <- x[j]
    theta_hat[b] <- var(x_bar)
    se[b] <- boot_se(x_bar)
}

theta_hat_zero <- var(x)
se0 <- sd(theta_hat)

t <- (theta_hat - theta_hat_zero) / se
first_t <- sort(t)[(1 - alpha / 2) * B]
second_t <- sort(t)[(alpha / 2) * B]
print(c(theta_hat_zero - first_t * se0, theta_hat_zero - second_t * se0))