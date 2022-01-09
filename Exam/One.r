n <- 10
m <- 100000
y10 <- numeric(m)
y72 <- numeric(m)
for (i in 1:m) {
    x <- rcauchy(n)
    y10[i] <- sort(x)[10]
    y72[i] <- (sort(x)[7])^2
}
print(mean(y10))
print(mean(y72))