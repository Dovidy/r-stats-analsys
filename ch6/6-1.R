data <- read.csv(paste(c(getwd(), "/ch6/data/2010_6.csv"), collapse=''))
str(data)

names(data) <- c("time", "gender", "weight", "minutes")
tmp <- subset(data, gender==1)
weight <- tmp[[3]]
barx <- mean(weight)
s <- sd(weight)
n <- length(weight)
h0 <- 2800
( t.t <- (barx - h0) / (s / sqrt(n)) )