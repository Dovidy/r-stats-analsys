install.packages('prob')
library(prob)

# 4. binomal distribution

# 4-2. PK
n <- 10
p <- 4/5
x <- 0:n

ans_2 <- (dbinom(7, size=n, prob=p))

# 4-3. wrong

n <- 20
p <- 5/100

pbinom(2, size=n, prob=p)

# 4-4. virus

n <- 20
p <- 20/100

1 - pbinom(2, size=n, prob=p)

# 4-5. 2 dices

1/6

# 5. std distribution

# 5-1. 
options(digits=3)
mu <- 800
sigma <- 40
ll <- mu - 3*sigma
ul <- mu + 3*sigma

pnorm(750, mean=mu, sd=sigma)

# 5-2-1

mu <- 11
sigma <- 16

1 - pnorm(20, mean=mu, sd=sigma)

# 5-2-2

qnorm(0.1, mean=mu, sd=sigma)


# 5-3

mu <- 70
sigma <- 8




# 5-4

mu <- 1.5
sigma <- 2

h0 <- 
h1 <- 