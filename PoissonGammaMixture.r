n = 1000
r = 4
beta = 3
lambda = rgamma(n, r, beta)
x = rpois(n, lambda)

hist(x+1, prob=TRUE)
s = seq(0, 7, 1)
f = dnbinom(s, size=r, prob=beta/(1+beta))
lines(s, f, col="red")

mix = tabulate(x+1) / n
negbin = round(dnbinom(0:max(x), r, beta/(1+beta)), 3)
round(rbind(mix, negbin), 3)


