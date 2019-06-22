t <- 10
p <- 0.1
x <- 0:10
n <- 1000
b.4.mean <- rep(NA, n)
b.16.mean <- rep(NA, n)
b.64.mean <- rep(NA, n)
b.256.mean <- rep(NA, n)

for(i in 1:n) {
  b.4.mean[i] <- mean( rbinom(4, size=t, prob=p) )
  b.16.mean[i] <- mean( rbinom(16, size=t, prob=p) )
  b.64.mean[i] <- mean( rbinom(64, size=t, prob=p) )
  b.256.mean[i] <- mean( rbinom(256, size=t, prob=p) )
}

par(mfrow=c(2,2))


hist(b.4.mean, prob=T, xlim=c(0, 4), main="표본 크기 : 4", ylab="", xlab="", col="orange", border="red")
x1 <- seq(min(b.4.mean), max(b.4.mean), length=1000)
y1 <- dnorm( x=x1, mean=1, sd=sqrt(0.9)/sqrt(4))
lines(x1, y1, lty=2, lwd=2, col="blue")

hist(b.16.mean, prob=T, xlim=c(0, 4), main="표본 크기 : 16", ylab="", xlab="", col="orange", border="red")
x2 <- seq(min(b.16.mean), max(b.16.mean), length=1000)
y2 <- dnorm( x=x1, mean=1, sd=sqrt(0.9)/sqrt(16) )
lines(x2, y2, lty=2, lwd=2, col="blue")

hist(b.64.mean, prob=T, xlim=c(0, 4), main="표본 크기 : 64", ylab="", xlab="", col="orange", border="red")
x3 <- seq(min(b.64.mean), max(b.64.mean), length=1000)
y3 <- dnorm( x=x2, mean=1, sd=sqrt(0.9)/sqrt(64) )
lines(x3, y3, lty=2, lwd=2, col="blue")

hist(b.256.mean, prob=T, xlim=c(0, 4), main="표본 크기 : 256", ylab="", xlab="", col="orange", border="red")
x4 <- seq(min(b.256.mean), max(b.256.mean), length=1000)
y4 <- dnorm( x=x3, mean=1, sd=sqrt(0.9)/sqrt(256) )
lines(x4, y4, lty=2, lwd=2, col="blue")