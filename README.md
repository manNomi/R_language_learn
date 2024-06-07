# R_language_learn

## R 언어 대리 과제를 위한 짤막한 공부 후기 
<hr/>

### 왜 R 언어인가 ?
통계학에서 주로 사용하는 언어는 R과 파이썬이 있다 
그중 R은 통계학 용어가 많이 사용되어 코딩이 많이 필요하지 않으며 
오픈소스이기에 많은사람들이 사용한다고 한다 


### R언어를 쓰는 이유

- 기본적인 통계와 시각화 가능 -> 그래서 R에 통계용어가 매우 많다.

- 다양한 통계, 시각화 패키지들이 존재하고 있다. -> 코딩을 하지 않아도 다양한 기능을 구현 할 수 있다.

- 복잡한 데이터들을 다양한 그래프로 표현 할 수 있다.

- 어떠한 OS에서도 설치가 가능하다. 심지어 아이폰에도 설치 할 수 있다.

- 무료이며, 오픈소스이다.

- 직관적이고 쉽게 데이터 전처리를 할 수 있다.

- hadoop과 연결하여 사용이 가능하다.


### R언어의 특징

 R은 자바가 밑바탕이다. 자바로 만들어진 프로그램이다!

- 위의 특징 때문에 R을 사용하기 위해 자바를 구축할 수 있는 환경을 만드는 것이 좋다.

- R은 대부분의 언어와 연동 가능한 유연함을 가지고 있다.

- R은 버젼 에 따라 사용할 수 있는 패키지의 범위가 다르다.

- R 최신 버젼은 사용할 수 있는 패키지에 제약이 있을 수 있지만 오류가 적게 난다.

- R은 함수와 절차형 언어의 혼합이다.

- 프로그래밍 언어의 3가지 기본 기능(C언어 기준 : 배정(int a),분기(if),반복(for))을 가지고 있다.

- R은 대소문자를 구별한다.

- R에 스칼라는 없다. 무조건 벡터이다.

- R은 정제된 데이터를 가져와서 처리할 수 있는 툴이며, 데이터를 저장하고 생성하지 않는다.

- R패키지


### R언어의 단점 

빅데이터 느리다.

=> 모든 데이터를 메모리에 로딩 후 처리한다. 불필요한 데이터 저장으로 메모리 부족 현상이 일어난다.

그렇기에 GB 데이터는 어려움이 있다.

=> 처리가 느리기 때문에 기계 학습 패키지 경우 매우 느리다.

<hr/>
 

### R은 R studio에서 개발하는것이 좋다 
vsc로 개발시 r의 장점인 매핑기능을 활용하기 쉽지 않았다
vsc코드에서 구현이 잘안되는 부분이 r studio 에서는 돌아가는 경우가 종종 있다 
그래픽 활용을 위해서는 r studio가 유리하다


### R 사용방법
R은 오픈소스이기에 구글에서 다운로드 받는다 
R-studio도 함께 다운로드 받아서 사용할것 
R-studio 는 run 방식이 한줄한줄 된다 
간단한 코드는 vsc에서 해보는것도 추천 

<hr/>

### R언어 코드 분석 

### R 은 대입연산자가 다양하다 

```R
  <- 
  = 
    - 전역변수를 함수안에 사용할 때 사용하는 방법
  <-- 
```
### R의 프린트 방법 
```
  print()
  - R의 프린트는 가장 하위 방법 따로 설정 불가
  - 변수값도 하나만 넣을 수 있다

  paste()
  -  변수를 공백과 함께 합쳐주는 함수 - string을 합쳐준다
  - print(paste(value1,value2)) 같은 방식으로 사용
  - paste0 은 공백없이 합치는 함수이다

  cat()
  - R에서 주로 사용하는 print 방법 변수 여러개를 출력 가능하다
  - seq="" 등을 통해 다양한 형식을 지정 가능하다 
```
### R의 반복문 
```
  for (i in 1 : 100){}
  - 의 방식으로 사용한다
```
### R의 함수
```
myfunc=function(x){
ans =readline("수를 입력하시오 : ")
#inpput 함수
ans=as.numeric(ans)
- int로 바꾸기 
}
```

### R의 VECTOR
R에는 벡터라는 개념이 있다 
다른 언어의 배열과 비슷한 원리 
```
- 선언
vector=c()
- 추가
vector=append(vector,value)
- name 지정
names(vector)=name
name값이 vector의 개수보다 적으면 나머지는 none으로 들어가 있는다
- 인덱싱
vercotr[index]
vercotr[name]
```

### ggplot 라이브러리
값 그래핑과 매핑에 사용하는 라이브러리이다 
vsc에서는 되지 않아 R-studio로 개발하자

```
install.packages("ggplot2")
<- 라이브러리 설치 터미널에 입력할것

View(mpg)
< - mpg 데이터 값 보기

- 다양한 사용법이 있다
``` 


![이미지를 찾을 수 없습니다(이미지가 없을때 표시되는 부분)](/final_1.PNG)
![이미지를 찾을 수 없습니다(이미지가 없을때 표시되는 부분)](/final_2.PNG)