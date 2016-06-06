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

confidence_interval <- mean + c(-1,1) * qt(q,df=n-1) * sd/sqrt(n)
## [1107, 1123]

## 2. Average difference is -2
## Standard devation of the difference
## for the upper endpoind of
## 95% T confidence iterval to be 0

interval_upper <- 0
mean <- -2
n <- 9

sd <- interval_upper - mean * sqrt(n)/qt(0.975, df=n-1)
## sd = 2.60

## 4. 95% confidence interval for
## the differences of the mean
## median waiting time (MWT)
## y: new
## x: old

n_y <- 10 # number of nights
n_x <- 10
m_x <- 5 # mean MWT
m_y <- 3
s_x2 <- 0.68 # variance
s_y2 <- 0.60
s_p2 <- ((n_x - 1) * s_x2 + (n_y - 1) * s_y2) / (n_x + n_y - 2) # pooled variance

confidence_interval <- m_y - m_x + c(-1,1) * qt(0.975, df=n_x+n_y-2) * sqrt(s_p2) * sqrt(1/n_x + 1/n_y)
## [-2.75, -1.25]

## 7. 90% confidence interval for
## the differences of the change in BMI
## y: treatment
## x: placebo

n_y <- 9 # number of subjects
n_x <- 9
m_y <- -3 # average difference
m_x <- 1
sd_y <- 1.5 # standard deviation
sd_x <- 1.8
sd_p2 <- ((n_x - 1) * sd_x^2 + (n_y - 1) * sd_y^2) / (n_x + n_y - 2) # pooled variance
sd_p <- sqrt(sd_p2)
alpha <- 0.10

confidence_interval <- m_y - m_x + c(-1,1) * qt(1-alpha/2, df=n_x+n_y-2) * sd_p * sqrt(1/n_x + 1/n_y)
## [-5.364, -2.636]