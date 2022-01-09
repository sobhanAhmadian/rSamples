library(boot)
data(law, package = "bootstrap")

boot_obj <- boot(law, R = 2000, statistic = function(x, i) {
    cor(x[i, 1], x[i, 2])
    })
print(boot.ci(boot_obj, type = c("basic", "norm", "perc")))

b <- 2000
n <- nrow(law)
theta_hat <- numeric(b)
alpha <- 0.05
for (i in 1:b) {
    j <- sample(1:n, size = n, replace = TRUE)
    lsat <- law$LSAT[j]
    gpa <- law$GPA[j]
    theta_hat[i] <- cor(lsat, gpa)
}
print(c(sort(theta_hat)[alpha / 2 * b], sort(theta_hat)[(1 - alpha / 2) * b]))