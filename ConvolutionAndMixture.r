n = 1000
x1 = rgamma(n, 2, 2)
x2 = rgamma(n, 2, 4)
s = x1 + x2
u = runif(n)
k = as.integer(u > 0.5)
x = k * x1 + (1-k) * x2

par(mfcol=c(1, 2))
hist(s, prob=TRUE)
hist(x, prob=TRUE)
par(mfcol=c(1, 2))

