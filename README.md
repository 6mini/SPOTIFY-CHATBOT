<div align=center>

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https://github.com/6mini/SPOTIFY-CHATBOT&count_bg=%23AAAAAA&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=Hits&edge_flat=false)](https://github.com/6mini/SPOTIFY-CHATBOT)

</div>

# SPOTIFY-CHATBOT
[Data Pipeline Project] 스포티파이 음악 추천 챗봇<br>
(feat. AWS PostgreSQL, DynamoDB, S3, Athena, Zeppelin, Spark)

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