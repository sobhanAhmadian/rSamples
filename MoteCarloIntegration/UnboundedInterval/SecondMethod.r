# Example 5.4
m <- 10000
z <- rnorm(m)
x <- seq(0.1, 2.5, length = 10)
dim(x) <- length(x)
p <- apply(x, MARGIN = 1, FUN = function(x, z) {
    mean(z <= x)
    }, z = z)
phi <- pnorm(x)
print(round(rbind(x, p, phi), 3))
