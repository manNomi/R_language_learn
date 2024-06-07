# 필요한 패키지 로드
library(ggplot2)
library(dplyr)

# mpg 데이터 불러오기
data(mpg)

# 1) mpg 데이터의 모양(차원)과 변수의 속성을 출력
dim(mpg)
str(mpg)

# 2) cty(도시 연비)와 hwy(고속도로 연비) 두 변수를 하나로 통합한 파생변수 total을 데이터 프레임에 추가하고 평균을 출력
mpg <- mpg %>%
  mutate(total = (cty + hwy) / 2)

# total 변수의 평균을 출력
mean(mpg$total)

# 3) total 변수를 히스토그램으로 시각화
ggplot(mpg, aes(x = total)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black") +
  labs(title = "Histogram of Total Fuel Efficiency", x = "Total Fuel Efficiency", y = "Frequency")

# 4) total 변수의 값에 따라 등급을 부여한 grade 변수를 추가하고 결과를 출력
mpg <- mpg %>%
  mutate(grade = case_when(
    total >= 30 ~ "A",
    total >= 25 ~ "B",
    total >= 20 ~ "C",
    TRUE ~ "D"
  ))

# grade 변수의 빈도를 확인
table(mpg$grade)

# 5) grade 변수의 등급별 빈도를 막대그래프로 시각화
ggplot(mpg, aes(x = grade)) +
  geom_bar(fill = "orange", color = "black") +
  labs(title = "Frequency of Grades", x = "Grade", y = "Count")

# 6) class 변수로 그룹화하여 각 차종에 대한 cty 평균을 구하고 내림차순으로 정렬하여 출력
mpg %>%
  group_by(class) %>%
  summarise(mean_cty = mean(cty)) %>%
  arrange(desc(mean_cty))
