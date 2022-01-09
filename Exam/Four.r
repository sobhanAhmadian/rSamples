set.seed(9713002)

# part 1
n <- 10000
u <- runif(n, 0, 3)
x <- exp(-1 * exp(u^2))
first <- 3 * mean(x)
print(first)

# part 2
x <- rexp(n, 1)
fg <- exp(x - exp(x^2))
u <- runif(n, 1, 3)
x <- exp(-1 * exp(u^2))
second <- mean(fg) + 2 * mean(x)
print(second)

# part 3
print(abs(first - second) / first * 100)
