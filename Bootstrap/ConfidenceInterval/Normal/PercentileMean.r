k <- 1000
a <- numeric(k)
b <- numeric(k)
c <- numeric(k)

n <- 10
alpha <- 0.05

for (l in 1:k) {
    x <- rnorm(n, mean = 2, sd = sqrt(2))
    x_bar <- mean(x)

    l1 <- sqrt(2) / sqrt(n) * qnorm(1 - alpha / 2)
    a[l] <- 2 * l1;

    l2 <- sd(x) / sqrt(n) * qt(1 - alpha / 2, n - 1)
    b[l] <- 2 * l2

    m <- 1000
    x_bar_star <- numeric(m)
    for (i in 1:m) {
        j <- sample(1:n, size = n, replace = TRUE)
        x_star <- x[j]
        x_bar_star[i] <- mean(x_star)
    }

    c[l] <- abs(sort(x_bar_star)[(alpha / 2) * m]
    - sort(x_bar_star)[(1 - alpha / 2) * m])
}
print(mean(a))
print(mean(b))
print(mean(c))