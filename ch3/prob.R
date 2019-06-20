install.packages('prob')
library(prob)

# ex 3-1 Prob
tosscoin(1)
rolldie(1)
urnsamples(1:3, size=2)
urnsamples(1:3, size=2, replace=T)
urnsamples(c(rep('R', 3), rep('B', 2)), size=2)

tosscoin(2, makespace = T)
tosscoin(2, makespace = F)

# ex 3-2 prob var's exp(mean) and variance
x <- c(0, 1, 2)
px <- c(1/4, 2/4, 1/4)
EX <- sum( x * px )
EX
x * 2
x * (1:6)
x * (1:4)
EX2 <- sum(x^2 * px)
VX <- EX2 - EX^2
VX

# ex 3-3. binomial coefficient
n <- 6
p <- 1/3
x <- 0:n

(dbinom(2, size=n, prob=p))
(dbinom(4, size=n, prob=p))
(px <- dbinom(x, size=n, prob=p))
plot(x, px, type='s',
     xlab='성공 횟수(x)', ylab='확률(P[X=x])', 
     main='B(6, 1/3)')
plot(x, px, type='h',
     xlab='성공 횟수(x)', ylab='확률(P[X=x])', 
     main='B(6, 1/3)',
     lwd=10, col='red')

pbinom(2, size=n, prob=p)
pbinom(4, size=n, prob=p)
pbinom(4, size=n, prob=p) - pbinom(2, size=n, prob=p)

qbinom(0.1, size=n, prob=p)
qbinom(0.5, size=n, prob=p)

rbinom(10, size=n, prob=p)

px <- dbinom(x, size=n, prob=p)
(ex <- sum(x * px))
(ex2 <- sum(x^2 * px))
(varx <- ex2 - ex^2)

n * p # binom's exp
n * p * (1-p) # binom's var

# ex 3-5. r normal distribution
options(digits=3)
mu <- 170
sigma <- 6
ll <- mu - 3*sigma
ul <- mu + 3*sigma

x <- seq(ll, ul, by=0.01)
nd <- dnorm(x, mean=mu, sd=sigma)
# help(dnorm)
plot(x, nd, type='l',
     xlab='x', ylab='P(X=x)', main='mean:170, sd=6, std normal dist ', lwd=2, col='red')

pnorm(mu, mean=mu, sd=sigma)
pnorm(158, mean=mu, sd=sigma)
pnorm(180, mean=mu, sd=sigma) - pnorm(160, mean=mu, sd=sigma)

qnorm(0.25, mean=mu, sd=sigma)
qnorm(0.5, mean=mu, sd=sigma)
qnorm(0.75, mean=mu, sd=sigma)


options(digits=5)
set.seed(5)
smp <- rnorm(400, mean=mu, sd=sigma)
c(mean(smp), sd(smp))
hist(smp, prob=T, main=('N(170, 6^2) 추출한표본 분포(n=400)'))
lines(x, nd, lty=2, lwd=2, col='red')

# ex 3-6 
options(digits = 4)
mu <- 0
sigma <- 1

p0.05 <- qnorm(0.05, mean=mu, sd=sigma)
p0.025 <- qnorm(0.025, mean=mu, sd=sigma)

p0.05 # 1.645
p0.025 # 1.96

pnorm(1.645) - pnorm(-1.645)
pnorm(1.96) - pnorm(-1.96)

# paint 3-16
z <- seq(-3, 3, by=0.001)
z.p <- dnorm(z)

plot(z, z.p, axes=F, type="l", main="표준정규분포 (90%)", ylab="", ylim=c(-0.04, 0.4))
axis(1)
lines(c(-3, 3), c(0, 0))

points(-1.645, -0.02, pch=17, col="red")
text(-1.645, -0.035, "-1.645", col="red")
points(1.645, -0.02, pch=17, col="red")
text(1.645, -0.035, "1.645", col="red")

s <- seq(-1.645, 1.645, by=0.001)
s.z <- dnorm(s, mean=0, sd=1)
s <- c(-1.645, s, 1.645)
s.z <- c(0, s.z, 0)

polygon(s, s.z, density=10, col="red")
help(polygon)