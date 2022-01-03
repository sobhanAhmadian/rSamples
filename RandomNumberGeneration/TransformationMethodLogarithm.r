n = 1000
theta = 0.5
u = runif(n)
v = runif(n)
x = floor(1 + log(v) / log(1 - theta ^ u))

hist(x, probability=TRUE)
k = seq(0, 8, 0.1)
p = -1 / log(1 - theta) * theta ^ k / k
lines(k, p, col="red")

k = 1:max(x)
p = -1 / log(1 - theta) * theta ^ k / k
p.hat = tabulate(x) / n
round(rbind(p, p.hat), 3)

rlogarithmic = function(n, theta) {
    u = runif(n)
    v = runif(n)
    x = floor(1 + log(v) / log(1 - theta ^ u))
    return(x)
}

rlogarithmic(5, 0.5)