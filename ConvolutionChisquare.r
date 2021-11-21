n = 5
nu = 4
X = matrix(data = rnorm(n*nu), nrow = n, ncol = nu) ^ 2
y = apply(X, 1, sum)
y

mean(y)
mean(y^2)

hist(y + 1, prob=TRUE)
s = seq(0, 21, 0.1)
f = dchisq(s, nu)
lines(s, f, col="red")

qqplot(y, rchisq(n, nu))