m <- 10000
theta_hat <- se <- numeric(5)
g <- function(x) {
    exp(-x) / (1 + x^2) * (x < 1) * (x > 0)
}

# f0
x <- runif(m)
fg <- g(x)
theta_hat[1] <- mean(fg)
se[1] <- sd(fg)

# f1
x <- rexp(m, 1)
fg <- g(x) / exp(-x)
theta_hat[2] <- mean(fg)
se[2] <- sd(fg)

# f2
x <- rcauchy(m)
i <- c(which(x > 1), which(x < 0))
x[i] <- 2
fg <- g(x) / (1 / ((1 + x^2) * pi))
theta_hat[3] <- mean(fg)
se[3] <- sd(fg)

# f3
u <- runif(m)
x <- - log(1 - u * (1 - exp(-1)))
fg <- g(x) / exp(-x) * (1 - exp(-1))
theta_hat[4] <- mean(fg)
se[4] <- sd(fg)

# f4
u <- runif(m)
x <- tan(u * pi / 4)
fg <- g(x) / (4 / ((1 + x^2) * pi))
theta_hat[5] <- mean(fg)
se[5] <- sd(fg)

print(rbind(theta_hat, se))