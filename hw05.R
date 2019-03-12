# Problem 5)
# a)
data <- c(5.9, 5.3, 1.6, 7.4, 8.6, 3.2, 2.1,
          4.0, 7.3, 8.4, 5.9, 6.7, 4.5, 6.3,
          6.0, 9.7, 3.5, 3.1, 4.3, 3.3, 8.4,
          4.6, 8.2, 6.5, 1.1, 5.0, 9.4, 6.4)
stem(data)

# b)
sd(data)
n <- length(data)
sqrt(
  ( sum(data ^ 2) - sum(data)^2 / n ) / (n - 1)
)

# c)
summary(data)

# d)
library(ggplot2)
ggplot(data.frame(data), aes(x = data)) +
  geom_histogram(aes(y = ..density..), binwidth = 1) +
  geom_density() +
  stat_function(fun = function(x) dnorm(x, mean = mean(data), sd = sd(data)),
                color = "darkred",
                size = 1)

qqnorm(data)
qqline(data)
