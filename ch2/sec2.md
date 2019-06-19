## 2-2 모수와 통계량

### 최댓값과 최솟값
최댓값 : 자료 중 가장 큰 값

최솟값 : 자료 중 가장 작은 값

```R
max(data$columns) # 최댓값
min(data$columns) # 최솟값
```

### 최빈값
최빈값(mode) : 가장 많이 관찰된 값

### 평균과 중앙값
평균(mean) : 무게중심, 산술평균.

중앙값(median) : 순서상 중심


```R
mean(data$column) # 평균
median(data$column) # 중앙값
```

### 표준편차와 사분위수 범위
자유도(degrees of freedom) : n개의 자료 중 n-1개는 원하는 값을 마음대로 가질 수 있는 것

분산(variance) : 편자 제곱의 평균

표준편차(standard deviation) : 분산의 제곱근. 클수록 자료가 평균을 중심으로 퍼진 정도가 더 크다

변동계수(coefficient of variance) : 평균에 대한 상대적인 변동성의 크기.  표준변차/표본평균

사분위수(quartile) : 전체 자료를 순서대로 나열한 후 4등분 한 각각의 위치. 제1사분위수 ~ 제4사분위수

사분위수 범위(inter quartile range) : 중앙값을 포함한 영역을 나타내는 가장 작은 영역

이상치(outlier) : 관찰된 자료가 다른 값들과 ㅏㅁㄶ이 떨어져있는 값

```R
sd(data$column) # 표준편차
```