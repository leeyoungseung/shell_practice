#!/bin/bash
# 파일의 기존 기록을 null명령어로 초기화 하기
# 실행 명령 : ./027_null.sh

# uptime 명령어 기록 파일 정의
uptimelog="uptime.log"

# (:)널 명령어로 빈 파일 초기화
# ㅍ파일이 없으면 빈 파일이 작성되고, 파일이 있다면 파일의 내용을 널로 만든다
: > $uptimelog

# 10초마다 6번, uptime 명령어 실행
for i in 1 2 3 4 5 6
do
 # uptime명령어로 서버의 부하상태를 출력해서 log파일에 저장하기
 uptime >> $uptimelog
 sleep 10
done

cat $(pwd)/$uptimelog

