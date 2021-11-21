n = 5
a = 3
b = 4
u = rgamma(n, shape = a, rate =1)
v = rgamma(n, shape = b, rate =1)
x = u / (u + v)
x

r = seq(0, 1, 0.01)
f = dbeta(r, a, b)

hist(x, probability=TRUE)
lines(r, f, col="red")

q = qbeta(ppoints(n), a, b)
qqplot(q, x, cex=0.25, xlab="Beta(3, 2)", ylab=("Sample"), col="red")
abline(0, 1)