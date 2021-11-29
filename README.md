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



# SPOTIFY-CHATBOT

</div>

- [Data Pipeline Project] 스포티파이 음악 추천 챗봇<br>
(feat. AWS PostgreSQL, DynamoDB, S3, Athena, Zeppelin, Spark)
- [Sixpotify Facebook Page 바로가기](https://www.facebook.com/sixpotify)
- [블로그 포스팅 바로가기](https://6mini.github.io/project/2021/10/14/spotify/)

## History

### 21.10.14. 1700i
- Spotify API AWS PostgreSQL, DynamoDB 적재
- S3 partition 구분 후 적재
- Athena data lake 설정
- EMR 이용 Zeppelin 연동 후 Spark 사용 확인

### 21.10.15. 0105i
- Spark 
  - RDD, DF, UDF, JOIN, SQL

### 21.10.17. 0221i
- AWS EC2 이용 Crontab 생성 후 자동화
- AWS Lambda 이용 스크립팅 및 스케쥴링

### 21.10.18. 0125i
- Athena 연동하여 Artist 유사도 계산
- Facebook 챗봇 개발
- Lambda 이용 연결

# Data Pipeline

![윤민쓰 의뢰 002](https://user-images.githubusercontent.com/79494088/143784103-2eff415b-5638-4f39-b92e-2d2d69993435.png)

- Spotify API
    - RDS(PostgreSQL)에 Artist의 top track, image 저장
    - DynamoDB에 Artist 장르 정보 저장
    - S3에 EC2 Crontab 이용 Artist의 top track, audio feature 저장 자동화
- Athena에서 S3 Data 이용 유사도 산출 후 RDS(PostgreSQL) 저장
- EMR 이용 Apach Spark에서 분석 및 시각화 핸들링
- Lambda Severless Computing
    - Chatbot에 API Gateway 경유 정보 전달
    - Cloudwatch Logs에 Logging
    - Chatbot DB에 해당 Artist 정보 없을 시, Spotify API 호출하여 DB 저장

# Preview

- 페이스북 메인 페이지

![image](https://user-images.githubusercontent.com/79494088/143771768-a01411d5-56d2-4c33-84c4-821d0501f057.png)

- 입력한 아티스트의 장르와 유사한 아티스트를 반환한다.

![image](https://user-images.githubusercontent.com/79494088/143767942-69e71e00-a55e-48ee-b499-ef1a0c9bc9bc.png)

![image](https://user-images.githubusercontent.com/79494088/143768054-525bfd9e-22ce-459a-827d-7caaf8a34dcd.png)

- DB에 저장되어있지 않은 아티스트를 입력하면 자동으로 저장되고, 몇 초 뒤 재입력하면 아티스트의 정보를 반환한다.

![image](https://user-images.githubusercontent.com/79494088/143768079-26ad67de-16e2-43a6-b5c2-f79db164ee5b.png)