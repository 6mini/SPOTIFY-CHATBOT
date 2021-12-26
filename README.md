<div align=center>

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https://github.com/6mini/SPOTIFY-CHATBOT&count_bg=%23AAAAAA&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=Hits&edge_flat=false)](https://github.com/6mini/SPOTIFY-CHATBOT)

![image](https://user-images.githubusercontent.com/79494088/143784373-b759680c-ea9e-47ca-a74f-affe5bcaeb91.png)

<img src="https://img.shields.io/badge/Apache Spark-E25A1C?style=flat-square&logo=Apache Spark&logoColor=white"/></a>
<img src="https://img.shields.io/badge/ChatBot-FFD000?style=flat-square&logo=ChatBot&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Spotify-1DB954?style=flat-square&logo=Spotify&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Amazon S3-569A31?style=flat-square&logo=Amazon S3&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=Python&logoColor=white"/></a>

<img src="https://img.shields.io/badge/Facebook-1877F2?style=flat-square&logo=Facebook&logoColor=white"/></a>
<img src="https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=PostgreSQL&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Amazon DynamoDB-4053D6?style=flat-square&logo=Amazon DynamoDB&logoColor=white"/></a>
<img src="https://img.shields.io/badge/Amazon AWS-232F3E?style=flat-square&logo=AmazonAWS&logoColor=white"/></a>



# Welcome to Sixptify 🙋🏻‍♂️

</div>

- AWS 활용 클라우드 환경 데이터 파이프라인 구축 및 음악 추천 챗봇 프로젝트: 'Sixpotify'<br>
- [챗봇 페이스북 페이지 바로가기](https://www.facebook.com/sixpotify)
- [블로그 포스팅 바로가기](https://6mini.github.io/project/2021/10/14/sixpotify1/)

# 문제 정의

- 제일 먼저 클라우드 환경에서의 데이터 파이프라인을 구축해보고 싶었다.
- 파이썬으로 상황에 맞는 데이터 베이스을 사용하여 자유자재로 핸들링하는 기술을 익히고 싶었다.
- 음악 정보를 이용하여 유사도를 구하게 되면, 추천해주는 알고리즘을 만들어서 챗봇 형태로 제공해볼 수 있지 않을까? 란 문제로 시작하게 된 프로젝트이지만, 엔지니어링을 경험하는 것이 우선적인 프로젝트이다.

# 데이터 파이프라인

![윤민쓰 의뢰 002](https://user-images.githubusercontent.com/79494088/143784103-2eff415b-5638-4f39-b92e-2d2d69993435.png)

- 음악 유사도를 구하기 위한 정보를 위해 스포티파이 API 활용
    - [RDS 이용 PostgreSQL에 아티스트의 top track, 이미지 저장](https://6mini.github.io/project/2021/10/14/sixpotify2/)
    - [DynamoDB에 아티스트 장르 정보 저장](https://6mini.github.io/project/2021/10/14/sixpotify3/)
    - [S3 버킷에 EC2 Crontab 이용 아티스트의 top track, audio feature 저장 자동화](https://6mini.github.io/project/2021/10/15/sixpotify6/)
- [Athena에서 S3 적재 데이터 이용 유사도 산출 후 RDS PostgreSQL에 저장](https://6mini.github.io/project/2021/10/14/sixpotify4/)
- [EMR 이용 스파크(Spark)에서 분석 및 시각화 핸들링](https://6mini.github.io/project/2021/10/14/sixpotify5/)
- [람다 서버리스 컴퓨팅(Lambda Severless Computing)](https://6mini.github.io/project/2021/10/17/sixpotify7/)
    - 챗봇에 API 게이트웨이 경유 정보 전달
    - 클라우드왓치 로그(Cloudwatch Logs)에 로깅
    - 챗봇 DB에 해당 아티스트 정보 없을 시, 스포티파이 API 호출하여 DB 저장

# 간략 회고
- [전체 회고 보러가기](https://6mini.github.io/project/2021/10/26/sixpotify8/)
- 지금까지의 프로젝트 중 제일 마음에 들면서도 마음에 들지 않는다(?).
  - 항상 과정보다 결과에 초점을 맞췄는데, 이번만큼은 결과보다 과정에 많은 초점을 맞췄다.
  - 고로 과정에서의 경험이 다양했기 때문에 재밌고 유익했지만, 결과는 마음에 들지 않는다.
- 거의 모든 데이터 플로우를 클라우드로 진행했기 때문에 굉장히 재밌고 어려운 경험이었다.
- 데이터 레이크부터 웨어하우스까지 구축해보고 거기에 RDS와 NoSQL까지 사용해보니 적재에 관련된 지식까지 꽤나 적재되었다.
- Lambda Severless Computing 같은 경우엔 처음 사용해봤는데, 굉장히 흥미로웠다. 하지만… 굉장히 까다로웠다.
- 전체적으로 구현하는 과정이 너무 많은데 굉장히 까다로운 테스크가 많았고 많은 시간을 오류와 싸웠지만 모두 해결해서 후련하다.
- 그래도 결과의 아쉬움은 짚고 넘어가야겠다.

- 먼저 아티스트 입력 -> 유사 아티스트 추천 웬말이냐…
  - 요즘은 노래 한 곡 듣기만해도 추천해주는 시대인데… 이제 발걸음을 한발 뗀 아기와 같은 내 구현력..
- Spotify에 등록된 가수명이 아닌 경우 등록도, 추천도 하지 못하는 멍충이 내 챗봇…
  - 에스파라고 치면 안돼요… aespa라고 쳐야해요…
  - 샤이니, shinee도 안돼요…. SHINee라고 쳐야해요….
  - 이 문제는 사실 API 수집할때부터 입력까지 대소문자를 통일하는 문제로 해결해야한다. + 통역 시스템까지 마련해야한ㄷ….
- 비지니스적 쓰임새가 전-혀 없다.

- 어떻게보면 튜토리얼에 맞춰 진행했기 때문에 많은 제약이 있었지만, 하나하나 쉬운 테스크가 하나도 없었기 때문에 굉장히 많은 걸 경험하고 발전할 수 있었다.
- 이젠 내가 생각한 서비스를 위해 스스로 데이터 파이프라인을 지금까지 배웠던 것을 바탕으로 구축해보고 싶은 마음이 크다.

# 미리보기

## 페이스북 메인 페이지

<div align=center>

![image](https://user-images.githubusercontent.com/79494088/143771768-a01411d5-56d2-4c33-84c4-821d0501f057.png)

</div>

## 입력한 아티스트의 장르와 유사한 아티스트 반환

<div align=center>

![image](https://user-images.githubusercontent.com/79494088/143767942-69e71e00-a55e-48ee-b499-ef1a0c9bc9bc.png)

![image](https://user-images.githubusercontent.com/79494088/143768054-525bfd9e-22ce-459a-827d-7caaf8a34dcd.png)

</div>

- DB에 저장되어있지 않은 아티스트를 입력하면 자동으로 저장되고, 몇 초 뒤 재입력하면 아티스트의 정보를 반환한다.

<div align=center>

![image](https://user-images.githubusercontent.com/79494088/143768079-26ad67de-16e2-43a6-b5c2-f79db164ee5b.png)

</div>