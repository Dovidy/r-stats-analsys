
## 7-1.
mu <- 1000
x <- c(980, 1008, 968, 1032, 1012, 996, 1021, 1002, 996, 1017)

shapiro.test(x)
t.test(x, mu=mu)

## 7-2.
mu <- 55
x <- c(58, 49, 39, 99, 32, 88, 62, 30, 55, 65, 44, 55, 57, 53, 88, 42, 39)

shapiro.test(x)
t.test(x, mu=mu)

## 7-3.
mu <- 8.1
x <- c(15.50, 11.21, 12.67, 8.87, 12.15, 9.88, 2.06, 14.50, 0, 4.97)

shapiro.test(x)
t.test(x, mu=mu)