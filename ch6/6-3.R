data <- read.table("http://www.amstat.org/publications/jse/datasets/babyboom.dat.txt", header=F)
# load("weight.Rdata")
str( data )

names(data) <- c("time", "gender", "weight", "minutes")
tmp <- subset(data, gender==1)
weight <- tmp[[3]]
barx <- mean(weight)
s <- sd(weight)
n <- length(weight)
h0 <- 2800
( t.t <- (barx - h0) / (s / sqrt(n)) )

alpha <- 0.05
( c.u <- qt(1-alpha, df=n-1) )

( p.value <- 1 - pt(t.t, df=n-1) )
t.test(weight, mu=2800, alternative="greater")

par(mar=c(0,1,1,1))
x <- seq(-3, 3, by=0.001)
y <- dt(x, df=n-1)
plot(x, y, type="l", axes=F, ylim=c(-0.02, 0.38), main="", xlab="t", ylab="")
abline(h=0)
polygon(c(c.u, x[x>c.u], 3), c(0, y[x>c.u], 0), col=2)
abline(v=c.u,lwd=1)
text(c.u, -0.02, paste("c.u=", round(c.u,3)))
abline(v=t.t,lwd=4)
polygon(c(t.t, x[x>t.t], 3), c(0, y[x>t.t], 0), density=20, angle=45)
text(t.t, -0.02, paste("t=", round(t.t, 3)), pos=4)
s