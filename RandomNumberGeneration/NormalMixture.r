n = 5
x1 = rnorm(n, 0, 1)
x2 = rnorm(n, 1, 1)
u = runif(n)
k = as.integer(u >= 0.5)
x = x1 * k + x2 * (1-k)
x

mean(x)

s = seq(-6, 6, 0.1)
f = 0.5 * dnorm(s, 0, 1) + 0.5 * dnorm(s, 1, 1) 

hist(x, prob=TRUE)
lines(s, f, col="red")