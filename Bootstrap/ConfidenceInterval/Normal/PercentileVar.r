n <- 16
alpha <- 0.05
x <- rnorm(n, mean = 2, sd = sqrt(2))
x_bar <- mean(x)
s <- sd(x)

print(c((n - 1) * s^2 / qchisq(1 - alpha / 2, n - 1),
(n - 1) * s^2 / qchisq(alpha / 2, n - 1)))

m <- 10000
s_star <- numeric(m)
for (i in 1:m) {
    j <- sample(1:n, size = n, replace = TRUE)
    x_star <- x[j]
    s_star[i] <- var(x_star)
}
print(c(sort(s_star)[(alpha / 2) * m],
 sort(s_star)[(1 - alpha / 2) * m]))
