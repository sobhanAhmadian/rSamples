n <- 20
m <- 1000
alpha <- .05
ucl <- replicate(m, expr = {
    x <- rnorm(n, 0, 2)
    (n - 1) * var(x) / qchisq(alpha, df = n - 1)
})
print(mean(ucl > 4))

ucl <- replicate(m, expr = {
    x <- rchisq(n, df = 1)
    (n - 1) * var(x) / qchisq(alpha, df = n - 1)
})
print(mean(ucl > 4))