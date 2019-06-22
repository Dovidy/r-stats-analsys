# chi2

n <- 1000
df <- 2
b.4.mean <- rep(NA, n)
b.16.mean <- rep(NA, n)
b.64.mean <- rep(NA, n)
b.256.mean <- rep(NA, n)

for(i in 1:n) {
  b.4.mean[i] <- mean( rchisq(4, df) )
  b.16.mean[i] <- mean( rchisq(16, df) )
  b.64.mean[i] <- mean( rchisq(64, df)  )
  b.256.mean[i] <- mean( rchisq(256, df) )
}

options(digits=4)

m <- df
s <- sqrt(2 * df)


par(mfrow=c(2,2))


hist(b.4.mean, prob=T, main="표본 크기 : 4", ylab="", xlab="", col="orange", border="red")
x1 <- seq(min(b.4.mean), max(b.4.mean), length=1000)
y1 <- dnorm( x=x1, mean=m, sd=s/sqrt(4) )
lines(x1, y1, lty=2, lwd=2, col="blue")

hist(b.16.mean, prob=T, main="표본 크기 : 16", ylab="", xlab="", col="orange", border="red")
x2 <- seq(min(b.16.mean), max(b.16.mean), length=1000)
y2 <- dnorm( x=x2, mean=m, sd=s/sqrt(16) )
lines(x2, y2, lty=2, lwd=2, col="blue")

hist(b.64.mean, prob=T, main="표본 크기 : 64", ylab="", xlab="", col="orange", border="red")
x3 <- seq(min(b.64.mean), max(b.64.mean), length=1000)
y3 <- dnorm( x=x3, mean=m, sd=s/sqrt(64) )
lines(x3, y3, lty=2, lwd=2, col="blue")

hist(b.256.mean, prob=T, main="표본 크기 : 256", ylab="", xlab="", col="orange", border="red")
x4 <- seq(min(b.256.mean), max(b.256.mean), length=1000)
y4 <- dnorm( x=x4, mean=m, sd=s/sqrt(256) )
lines(x4, y4, lty=2, lwd=2, col="blue")

###