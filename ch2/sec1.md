# 2-1 그래프

### 기술통계학의 개요

기술통계학 : 자료를 수집 및 정리하여 자료의 특성으로 자료를 요약하는 분야

추측통계학 : 과학적인 방법으로 표본의 특성을 통해 모집단의 특성을 추론하는 분야

### 그래프의 개요

그래프 : 자료의 모양을 그림으로 표현하는 방법

산점도(plot) : x축과 y축으로 구성된 좌표계 위에 이차원 자료를 점으로 표현하여 두 변수간의 관계를 나타낼 수 있는 도표

```r
plot(data, x, y, main, xlab, ylab, xlim, ylim, type)
```

### 막대그래프와 히스토그램

막대그래프 : 이산형 혹은 질적 자료의 개수를 나타내기 위한 방법 (높이)

히스토그램 : 연속형 자료의 개수 혹은 비율을 나ㅏ내기 위한 방법 (높이, 폭)

```r
barplot(data, height, width, beside, horiz)
hist(data, x, breaks, nclass)
```

### 원 도표

원 도표(pie-chart) : 질적 자료에서 각 범주가 데이터에서 차지하는 비율을 나타내는 방법

```r
pie(data, main)
table.var <- table(data$column)
pie(table.var, main='blahblah')
```