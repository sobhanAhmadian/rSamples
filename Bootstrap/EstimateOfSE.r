library(bootstrap)
print(law$LSAT)
print(law$GPA)
theta_hat <- cor(law$LSAT, law$GPA)
print(theta_hat)

B <- 2000
n <- nrow(law)
r <- numeric(B)

for (j in 1:B) {
    i <- sample(1:n, size = n, replace = TRUE)
    lsat <- law$LSAT[i]
    gpa <- law$GPA[i]
    r[j] <- cor(lsat, gpa)
}
se_r <- sd(r)
print(se_r)

bias <- mean(r - theta_hat)
print(bias)

hist(r, prob = TRUE)
