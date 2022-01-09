library(boot)
data(patch, package = "bootstrap")

theta_boot <- function(dat, ind) {
    #function to compute the statistic y <- dat[ind, 1]
    z <- dat[ind, 2]
    mean(y) / mean(z)
}

y <- patch$y
z <- patch$z
dat <- cbind(y, z)
boot_obj <- boot(dat, statistic = theta_boot, R = 2000)

alpha <- c(.025, .975)
print(boot_obj$t0 + qnorm(alpha * sd(boot_obj$t)))