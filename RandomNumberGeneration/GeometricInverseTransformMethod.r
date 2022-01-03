n = 10000
p = 1/3
q = 1 - p
x = ceiling(log(1 - runif(n)) / log(q)) - 1

hist(x, prob=TRUE)
qqplot(x, rgeom(n, p))