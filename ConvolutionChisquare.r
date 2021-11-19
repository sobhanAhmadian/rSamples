n = 1000
nu = 2
X = matrix(data = rnorm(n*nu), nrow = n, ncol = nu) ^ 2
y = apply(X, 1, sum)
mean(y)
mean(y^2)