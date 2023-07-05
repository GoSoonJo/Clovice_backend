![header](https://capsule-render.vercel.app/api?type=Waving&color=auto&height=300&section=header&text=✏유사도%20기반%20의류%20추천%20서비스-nl-&fontSize=50&animation=twinkling&desc=최종%20프로젝트%20Team.Clovice)
## 📅 프로젝트 기간



2023.02.24 ~ 20203.03.23

---

## 👥 멤버 구성

이영미(팀장)
- DB 연결, 백엔드, 크롤링, 모델링


:man:박명기:man:
- 웹-서버 연결, 백엔드, 프론트엔드, 크롤링, 모델링



김세빈
- 프론트(HTML, CSS, JS)


박건우
- 프론트(HTML, CSS, JS)



박서연
- 크롤링, 모델링







---
## 01. 프로젝트 소개
- 의류 이미지 분석을 통해 사용자가 애용하는 의류와 유사한 코디 추천 서비스
- 로그인시 사용자가 선호하는 의류를 고르면 그와 유사한 의류로 구성된 코디를 사용자에게 추천
- 패션 초보자가 자신이 좋아하는 의류와 코디를 찾기 위해 들이는 시간과 비용을 절약하기 위한 서비스


---


## 02. 프로젝트 특장점
- 선호 의류 입력을 기반으로 한 자신의 스타일과 유사한 코디 추천 가능
- 자신의 스타일과 유사한 코디를 찾기 위해 직접 발품 팔 필요가 없어 사용자 편의성 향상
- 패션 초보자들이 자신이 좋아하는 옷과 유사한 코디를 간편하게 모아볼 수 있는 서비스


---


## 03. 프로젝트 개발 내용
_🛠버전관리 및 협업툴_
- Git을 활용해 소스 코드 백업, 협업 등 효율적인 시간 분배
- 로컬과 서버 사이 Git을 두고 버전관리
프론트엔드
- 추천 코디에 집중할 수 있게 심플하면서 깔끔한 페이지 구성
- 사용자가 원하는 기능을 쉽게 이용할 수 있는 직관적인 구성
백엔드
- Spring Framework를 사용해 Java 기반 각종 클래스 및 라이브러리 활용
- Oracle DB를 이용한 데이터 베이스 설계
- Fast API를 활용한 Java와 Python간의 통로 구축
코디 추천 알고리즘
- 코디의 window size=1으로 개별 상품의 context, target, label 테이블을 생성, negative sample을 추가
- 코디를 하나의 문장으로, 개별 상품을 단어로 가정하고 word2vec을 개선한 skip-gram 기술 활용
- 두 개의 이미지를 input으로 하는 임베딩 모델로 inceptionV3를 사용하고 출력된 값을 skip-gram과 동일한 방식으로 학습
- skip-gram 모델은 0~1 사이의 확률값을 출력


---


## 04. 프로젝트 수행을 위한 주요 기술
- Spring Framework
- 반응형 웹페이지(html5, css3, bootstrap3·4, Javascript-Ajax)
- 버전관리 및 협업툴 (git, github)
- DB 연결 및 서버구축(Oracle DB, Mybatis, hikariCP, Tomcat, Fast API)
- 인공지능 기법(scikit-learn, tensorflow, keras, Inception V3, word2vec, skip-gram, VGG16)
- 데이터 수집 및 전처리 (pandas, numpy, requests, BeautifulSoup, selenium, openCV)


---


## 05. 프로젝트 기대효과 및 활용분야

- 사용자는 자신이 선호하는 스타일에 맞는 의류를 발품 팔아 조사하고 비교하는 게 아닌, 몇 번의 클릭만으로 추천 받을 수 있다.
- 패션 초보자도 고수도 모두 가지는 '오늘 뭐 입지?'라는 고민을 손쉽게 해결할 수 있다.
- 의류 쇼핑 실패로 인해 발생하는 의류 폐기물 감소에 기여할 수 있다.


---


# 🎥 프로젝트 시연영상 - 👇👇 썸네일을 클릭하시면 영상이 재생됩니다!


[![Video Label](http://img.youtube.com/vi/IhhzdfjQnK4/0.jpg)](https://youtu.be/IhhzdfjQnK4)


![footer](https://capsule-render.vercel.app/api?type=Shark&color=auto&height=300&section=footer&text=😀Thanks%20for%20watching-nl-&fontSize=50&animation=twinkling&desc=)













