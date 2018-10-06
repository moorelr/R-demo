# Sample R code for GitHub Repository

# Input parameters
n <- 1000
a <- -0.1
b <- 1
c <- -1
d <- 1

# Random noise
noise <- rnorm(n, mean = 0, sd = 3)

# Points to plot
xs <- seq(1, 10, length.out = n)
ys <- (a*xs^3)+(b*xs^2)+(c*xs)+d+noise

# Create linear color scale based on noise parameter
p0 <- min(noise); p1 <- max(noise)
q0 <- 1; q1 <- 0.3
m <- (q1-q0)/(p1-p0)
b <- q1 - (m*p1)
col_scale <- hsv((m*noise)+b, 1, 1)

# Draw the plot
plot(xs, ys, bg = col_scale, pch = 21
     , xlab = "X variable", ylab = "Response")

