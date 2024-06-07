# 1-1
for (i in 1:100){
if(i%%2!=0){
print(i)
}
}

# 1-2
for (i in 1:100){
if(i%%6==0){
print(i)
}
}

# 2
myfunc=function(x){
    for (i in 2:x){
        if(x==1){
            for (i in 0:length(result)){
                cat(result[i])
                if(i!=length(result) && i!=0){
                    cat("*")
                }
            }
            break
        }
        if (x%%i==0){
            result<<-append(result,i)
            myfunc(x/i)
            break
        }
    }
}
result=c()
ans =readline("소인수 분해할 수를 입력하시오 : ") 
ans=as.numeric(ans)
myfunc(ans)

# 3 
score=c(120,160,178,251,490,384,402,290,291,322,219,150)
month=c()
for (i in 1:12){
    month=append(month,paste0(i,"월"))
}
names(score)=month

# 3-1
print(score["5월"])

# 3-2 
cat(score["5월"],score["7월"])

#3-3
result=0
for ( i in 1:6){
    result=result+score[paste0(i,"월")]
}
print(result)

#3-4
result=0
for ( i in 7:12){
    result=result+score[paste0(i,"월")]
}
print(result/6)

# 3-5
for (i in 1:12){
    if(score[i]==max(score)){
        print(score[i])
    }
    if(score[i]==min(score)){
        print(score[i])
    }
}

# 4
install.packages("ggplot2") <- 라이브러리 설치 터미널에 입력할것
View(mpg) < - mpg 데이터 값 보기 
library(ggplot2)
mpg = as.data.frame(ggplot2::mpg)

# 4-1
ggplot(mpg, aes(x=displ, y=hwy, shape=drv)) + geom_point()
