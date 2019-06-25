x <- seq(-3, 3, by=0.001)
y <- dt(x, df=14)

plot(x, y, type="l", axes=F, ylim=c(-0.02, 0.38), main="", xlab="t", ylab="")
abline(h=0)
polygon(c(-3, x[x<ll], ll), c(0, y[x<ll], 0), col=2)

#polygon(c(-3, ll), c(0, 0), col=2)

polygon(c(ul, x[x>ul], 3), c(0, y[x>ul], 0), col=2)

#text(-2.5, 0.1, expression(plain(P)(T<t) == 0.025), cex=0.7)
#text(2.5, 0.1, expression(plain(P)(T>t) == 0.025), cex=0.7)
text(ll, -0.02, round(ll,3))
text(ul, -0.02, round(ul,3))

#####

alpha <- 0.05
u.s <- qt(1-(alpha), df=14)
l.s <- qt(alpha,df=14)

par(mar=c(0.5,1,1,1))
x <- seq(-3, 3, by=0.001)
y <- dt(x, df=14)
plot(x, y, type="l", axes=F, ylim=c(-0.02, 0.38), main="", xlab="t", ylab="")
abline(h=0)
polygon(c(-3, x[x<l.s], l.s), c(0, y[x<l.s], 0), col=2)
text(l.s, -0.02, round(l.s,3))



####

par(mar=c(0,1,1,1))
x <- seq(-3, 3, by=0.001)
y <- dt(x, df=n-1)
plot(x, y, type='l', axes=F, ylim=c(-0.02, 0.38), main="", xlab='t', ylab='')
arrows(1.8, 0.18, 1.8,0.09, length=0.05)
abline(h=0)

polygon(c(t.t, x[x>t.t], 3), c(0, y[x>t.t], 0), density=20, angle=45, )
text(t.t, -0.02, paste('t=', round(t.t, 3)), pos=4)
text(2.65, 0.1, expression(plain(P)(T>2.233) == 0.0196), cex=0.8)

arrows(2.7, 0.08, 2.5, 0.03, length=0.05)