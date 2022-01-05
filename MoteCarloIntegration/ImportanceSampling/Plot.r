# Example 5.10

x <- seq(0, 1, 0.1)
f0 <- x * x^-1
f1 <- exp(-x)
f2 <- 1 / (pi * (1 + x^2))
f3 <- exp(-x) / (1 - exp(-1))
f4 <- 4 / (pi * (1 + x^2))
g <- exp(-x) / (1 + x^2)
w <- 1.5

plot(x, g, type = "l", main = "", ylab = "", ylim = c(0, 2), lwd = w)
lines(x, f0, lty = 2, lwd = w)
lines(x, f1, lty = 3, lwd = w)
lines(x, f2, lty = 4, lwd = w)
lines(x, f3, lty = 5, lwd = w)
lines(x, f4, lty = 6, lwd = w)
legend("topright", legend = c("g", 0:4), lty = 1:6, lwd = w, inset = 0.02)

plot(x, g, type = "l", main = "", ylab = "", ylim = c(0, 3.2), lwd = w, lty = 2)
lines(x, g / f1, lty = 3, lwd = w)
lines(x, g / f2, lty = 4, lwd = w)
lines(x, g / f3, lty = 5, lwd = w)
lines(x, g / f4, lty = 6, lwd = w)
legend("topright", legend = c(0:4), lty = 2:6, lwd = w, inset = 0.02)