getwd()
data <- read.csv("ch2/data/2010-kor.csv", header=F, na.strings=c("."))
str(data)
data$V1 <- factor(data$V1, levels=c(1, 2), labels=c("남자", "여자"))
data$V3 <- factor(data$V3, levels=1:14, labels=c("가구주",  "가구주의 배우자",  "자녀",  "자녀의 배우자",  "가구주의 부모",  "배우자의 부모",  "손자녀, 그 배우자",  "증손자녀, 그 배우자",  "조부모",  "형제자매, 그 배우자",  "형제자매의 자녀, 그 배우자",  "부모의 형제자매, 그 배우자",  "기타 친인척",  "그외같이사는사람") )
data$V4 <- factor(data$V4, levels=1:8, labels=c("안 받았음", "초등학교", "중학교", "고등학교", "대학-4년제 미만", "대학-4년제 이상", "석사과정", "박사과정") )
str( data )
save.image("ch2/output/data.rda")

library(ggplot2)
cars

par(mfrow=c(1,2))
plot(cars$speed, cars$dist, main='', xlab='mph', ylab='ft', pch=1, col='red')
plot(jitter(cars$speed), jitter(cars$dist), main='', xlab='mph', ylab='ft', pch=1, col='red')
par(mfrow=c(1,1))

ggplot(cars, aes(x=speed, y=dist)) +
  geom_point()

Nile
str(Nile)
plot(Nile, main="Nile강의 연도별 유량 변화", xlab="연도", ylab="유량")
plot(Nile, type="p", main="Nile강의 연도별 유량 변화", xlab="연도", ylab="유량")
plot.ts(Nile)
plot(Nile)

df_nile <- as.data.frame(Nile)
head(df_nile)
year <- c(1871:1970)
df_nile$year <- year
ggplot(df_nile, aes(x=year, y=x)) +
  geom_line()

table(data$V5)
table.V5 <- table(data$V5)
barplot(table.V5)

table(data$V2)
hist(data$V2, breaks=c(seq(0,90,10)), right=F, main="연령별분포",xlab="연령", ylab="빈도")

getwd()
ranicafe <- read.csv('ch2/data/cafedata.csv', header=T, na.strings='na', stringsAsFactors = F)
ranicafe <- na.omit(ranicafe)

ranicafe$Coffees
sort(ranicafe$Coffees)
sort(ranicafe$Coffees)[1]  
sort(ranicafe$Coffees, decreasing=TRUE)
sort(ranicafe$Coffees, decreasing=TRUE)[1]  
min( ranicafe$Coffees )
max( ranicafe$Coffees )

stem(ranicafe$Coffees)
hist(ranicafe$Coffees)