install.packages('prob')
library(prob)

# 4. binomal distribution

# 4-2. PK
n <- 10
p <- 4/5
x <- 0:n

print(dbinom(7, size=n, prob=p))

# 4-3. wrong

n <- 20
p <- 5/100

print(pbinom(2, size=n, prob=p))

# 4-4. virus

n <- 20
p <- 20/100

print(1 - pbinom(2, size=n, prob=p))

# 4-5. 2 dices

dice_sum <- 6
dice_sum_n <- 0
n <- 0

i <- 1
j <- 1

for(i in c(1:6)) {
  for(j in c(1:6)) {
    if(i+j == dice_sum) {
      dice_sum_n <- dice_sum_n + 1
    }
    n <- n + 1
  }
}

print(dice_sum_n/n)

# 5. std distribution

# 5-1. 

options(digits=3)
mu <- 800
sigma <- 40

print(pnorm(750, mean=mu, sd=sigma))

# 5-2-1

mu <- 11
var <- 16
sigma <- sqrt(var)

print(1 - pnorm(19, mean=mu, sd=sigma))

# 5-2-2

print(qnorm(0.9, mean=mu, sd=sigma))

# 5-3
mu <- 70
sigma <- 8

p90 <- pnorm(90, mean=mu, sd=sigma)
p80 <- pnorm(80, mean=mu, sd=sigma)

print(p90 - p80)

# 5-4
options(digits=3)

mu <- 1.5
sigma <- 2

h0 <- pnorm(1, mean=mu, sd=sigma) - pnorm(0, mean=mu, sd=sigma)
h2 <- pnorm(3, mean=mu, sd=sigma) - pnorm(2, mean=mu, sd=sigma)

print(h0 + h2)
