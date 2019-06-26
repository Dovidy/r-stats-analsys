getwd()
data <- read.table("data/chapter7.txt", head=T)
boy <- subset(data, gender==1)
girl <- subset(data, gender==2)

var.test(data$weight ~ data$gender)

shapiro.test(girl$weight)
qqnorm(girl$weight)
qqline(girl$weight)

#p-value < 0.05 정규성 없음
shapiro.test(boy$weight)
qqnorm(boy$weight)
qqline(boy$weight)

iriss <- subset(iris, Species =='setosa')
shapiro.test(iriss$Sepal.Length) #p-val > 0.05 정규성 있음
qqnorm(iriss$Sepal.Length)
qqline(iriss$Sepal.Length)

shapiro.test(iriss$Sepal.Width) 
qqnorm(iriss$Sepal.Width)
qqline(iriss$Sepal.Width)

# 등분산성 테스트
var.test(data$weight ~ data$gender)

# 2-SAMPLE-TEST
t.test(data$weight ~ data$gender, mu=0, alternative='less', var.equal=TRUE)