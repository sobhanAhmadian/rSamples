n <- 9
m <- 10000
p <- numeric(m)
for (i in 1:m) {
    x <- rt(9, 2)
    p[i] <- mean(x)
}
k <- sort(p)[95 / 100 * m]
print(k)