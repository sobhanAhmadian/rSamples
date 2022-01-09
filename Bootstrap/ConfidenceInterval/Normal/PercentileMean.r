n <- 16
alpha <- 0.05
x <- rnorm(n, mean = 2, sd = sqrt(2))
x_bar <- mean(x)

l1 <- sqrt(2) / sqrt(n) * qnorm(1 - alpha / 2)
print(c(x_bar - l1, x_bar + l1))

l2 <- sd(x) / sqrt(n) * qt(1 - alpha / 2, n - 1)
print(c(x_bar - l2, x_bar + l2))

m <- 10000
x_bar_star <- numeric(m)
for (i in 1:m) {
    j <- sample(1:n, size = n, replace = TRUE)
    x_star <- x[j]
    x_bar_star[i] <- mean(x_star)
}
print(c(sort(x_bar_star)[(alpha / 2) * m],
 sort(x_bar_star)[(1 - alpha / 2) * m]))