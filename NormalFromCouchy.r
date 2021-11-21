n = 1000
a = 0
c = 1.52
y = rep(0, n)  

while(a<n) {
    u = runif(1)
    x = rcauchy(1)
    if (u * 1.52 * dcauchy(x) < dnorm(x)) {
       y[a] = x
       a = a + 1
    }
}

hist(y, prob=TRUE)
s = seq(-6, 6, 0.1)
f = dnorm(s)
lines(s, f, col="red")

qqplot(rnorm(n), y)
