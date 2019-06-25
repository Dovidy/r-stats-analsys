## 6-1

p.hat <- 0.5
n <- 100
alpha <- 0.05
z <- qnorm(1-(alpha/2))
ut <- p.hat + z*sqrt(p.hat*(1-p.hat)/n)
lt <- p.hat - z*sqrt(p.hat*(1-p.hat)/n)
c(lt, ut)

## 6-2

n <- 100
p.hat <- 4/5
alpha <- 0.05
z <- qnorm(1-(alpha/2))
ut <- p.hat + z * sqrt(p.hat * (1-p.hat) / n)
lt <- p.hat - z * sqrt(p.hat * (1-p.hat) / n)
c(lt, ut)

## 6-3

n <- 1000
p.hat <- 430/1000
alpha <- 0.10
z <- qnorm(1-(alpha/2))
ut <- p.hat + z * sqrt(p.hat * (1-p.hat) / n)
lt <- p.hat - z * sqrt(p.hat * (1-p.hat) / n)
c(lt, ut)