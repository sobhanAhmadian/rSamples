n <- 20
alpha <- .05
mu0 <- 500
sigma <- 100
m <- 10000
p <- numeric(m)

for (j in 1:m) {
    #number of replicates #storage for p-values
    x <- rnorm(n, mu0, sigma)
    ttest <- t.test(x, alternative = "greater", mu = mu0)
    p[j] <- ttest$p.value
}
p_hat <- mean(p < alpha)
se_hat <- sqrt(p_hat * (1 - p_hat) / m)
print(c(p_hat, se_hat))