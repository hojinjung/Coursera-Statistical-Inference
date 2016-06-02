## Coursera Data Science Specialization
## Statistical Inference
## Quiz 3

## 1. 95% Student's T confidence interval for
## brain volume of sample mean 1,100cc and
## standard deviation 30cc

mean <- 1100
sd <- 30
n <- 9
q <- 0.975 ## to leave 0.025 on both sides

confidence_interval <- mean + c(-1, 1) * qt(q, n-1) * sd / sqrt(n)
## [1107, 1123]
