n <- 20
alpha <- .05
x <- rnorm(n, 0, 2)
ucl <- (n - 1) * var(x) / qchisq(alpha, df = n - 1)
print(ucl)