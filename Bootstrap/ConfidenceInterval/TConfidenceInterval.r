boot_t_ci <-
function(x, B = 500, R = 100, level = .95, statistic) {
    #compute the bootstrap t CI
    x <- as.matrix(x); n <- nrow(x)
    stat <- numeric(B); se <- numeric(B)
    boot_se <- function(x, R, f) {
        #local function to compute the bootstrap
        #estimate of standard error for statistic f(x)
        x <- as.matrix(x); m <- nrow(x)
        th <- replicate(R, expr = {
            i <- sample(1:m, size = m, replace = TRUE)
            f(x[i, ])
        })
        return(sd(th))
    }
    for (b in 1:B) {
        j <- sample(1:n, size = n, replace = TRUE)
        y <- x[j, ]
        stat[b] <- statistic(y)
        se[b] <- boot_se(y, R = R, f = statistic)
    }
    stat0 <- statistic(x)
    t.stats <- (stat - stat0) / se
    se0 <- sd(stat)
    alpha <- 1 - level
    Qt <- quantile(t.stats, c(alpha / 2, 1 - alpha / 2), type = 1)
    names(Qt) <- rev(names(Qt))
    return(rev(stat0 - Qt * se0))
}

n <- 16
alpha <- 0.05
x <- rnorm(n, mean = 2, sd = sqrt(2))
stat <- function(x) {
    mean(x)
    }
ci <- boot_t_ci(x, statistic = stat, B = 2000, R = 200)
print(ci)