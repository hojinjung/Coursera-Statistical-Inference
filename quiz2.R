## Coursera Data Science Specialization
## Statistical Inference
## Quiz 2

## 1.sigma^2 / n

## 2. Diabolistic Blood Pressure for men are normally distributed with mean of 80 and standard deviation (sd) of 10.
mean <- 80
sd <- 10
pnorm(70, mean=mean, sd=sd, lower.tail=TRUE)
## Probability that DBP is less than 70 is approximately 16%.

## 3.
mean <- 1100
sd <- 75
qnorm(0.95, mean=mean, sd=sd)
## 95th percentile is approximately 1223 cc.

## 4.
mean <- 1100
sd <- 75/sqrt(100)
qnorm(0.95, mean=mean, sd=sd)
## 95th percentile of the sample is approximately 1112 cc.

## 5. Probability of getting 4 or more heads when throwing a fair coin 5 times.
size <- 5
prob <- 0.5
pbinom(3, size=size, prob=prob, lower.tail=FALSE)
## Approximately 19%
## Equivalent to 0.5 ^ 5 + 5 * (0.5 ^ 5) 

## 6.
mean <- 15
sd <- 10/sqrt(100)
pnorm(16, mean=mean, sd=sd, lower.tail=TRUE) - pnorm(14, mean=mean, sd=sd, lower.tail=TRUE)
## Approximately 68%

## 7. Sample mean would be near 0.5 because of LLN, but let's try it out anyway.
mean(runif(1000))
## Approximately 0.5

## 8. 5 people per hour, observed for 3 hours
lambda <- 5 * 3
ppois(10, lambda=lambda, lower.tail=TRUE)
## Probability of viewing 10 or less people is approximately 0.12