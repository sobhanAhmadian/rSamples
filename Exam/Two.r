n <- 1000000

u <- runif(n, 0, 2)
p <- numeric(n)
for (i in 1:n) {
     if (u[i] < 1) {
        u1 <- runif(1)
        x <- sqrt(u1)
        p[i] <- x
    } else {
       u1 <- runif(1)
       x <- (4 + sqrt(12 + u1^2 + u1)) / 2
       p[i] <- x
    }
}
print(sort(p)[0.05 * n])
