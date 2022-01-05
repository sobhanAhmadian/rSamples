# Example 5.3
x <- seq(0.1, 2.5, length = 10)
dim(x) <- length(x)
m <- 10000
y <- runif(m)
p <- apply(x, MARGIN = 1, FUN = function(x, y) {
    0.5 + mean(x * exp(- ((x * y)^2) / 2)) / sqrt(2 * pi)
    }, y = y)
phi <- pnorm(x)
print(round(rbind(x, p, phi), 3))