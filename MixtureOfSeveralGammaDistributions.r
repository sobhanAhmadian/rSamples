n = 5000
lambda = c(1, 1/2, 1/3, 1/4, 1/5)
p = (1:5)/15
rate = sample(lambda, n, replace = TRUE, prob = p)
x = rgamma(n, shape=3, rate=rate)

plot(density(x), xlim=c(0,40), ylim=c(0,.3), lwd=3, xlab="x", main="")
for (i in 1:5) {
  lines(density(rgamma(n, 3, lambda[i])))
}

f = function(x, lambda, theta) {
    sum(dgamma(x, 3, lambda) * theta)
}

x = seq(0, 40, length=1000)
dim(x) = length(x)
y = apply(x, 1, f, lambda=lambda, theta=p)
lines(x, y, col="red")