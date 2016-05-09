## Coursera Data Science Specialization
## Statistical Inference
## Quiz 1

## 1. Consider influenza epidemics for two parent heterosexual families. 
## Suppose that the probability is 17% that at least one of the parents has contracted the disease. 
## The probability that the father has contracted influenza is 12% 
## while the probability that both the mother and father have contracted the disease is 6%. 
## What is the probability that the mother has contracted influenza?
p_morf <- 0.17
p_f <- 0.12
p_mandf <- 0.06

p_m <- p_morf + p_mandf - p_f
print(p_m)

## 2.A random variable, X is uniform, a box from 0 to 1 of height 1.
## What is its 75th percentile?
punif(0.75, lower.tail=TRUE)

## 3. If you flip a coin and it comes up heads, you give your friend X dollars.
## Otherwise, your friend gives you Y dollars.
## The probabilitythat the coin is heads is p.
## p * (-X) + (1 - p) * Y = 0
## p * (X) = (1 - p) * Y
## p / (1 - p) = Y / X

## 4. If a density is exactly symmetric about zero,
## its median must be 0.

## 5. Consider the following PMF shown below in R
x <- 1:4
p <- x/sum(x)
temp <- rbind(x, p)
rownames(temp) <- c("X", "Prob")
## [,1] [,2] [,3] [,4]
## X 1.0 2.0 3.0 4.0
## Prob 0.1 0.2 0.3 0.4
## What is the mean?
mean <- sum(temp[1, ] * temp[2, ])
print(mean)

## 6. 
## Sensitivity P(+|preg) = 0.75
sensitivity <- 0.75
## Specificity P(-|~preg) = 0.52
specificity <- 0.52
## P(preg) = 0.3
p_preg <- 0.3
## P(preg|+) = P(preg & +) / P(+)
## = P(+|preg) * P(preg) / ( P(+|preg) * P(preg) + P(+|~preg) * P(~preg) )
## = P(+|preg) * P(preg) / ( P(+|preg) * P(preg) + (1 - P(-|~preg)) * (1 - P(preg)) )
p_preg_given_positive <- (sensitivity * p_preg) / (sensitivity * p_preg + (1 - specificity) * (1 - p_preg))
print(p_preg_given_positive)