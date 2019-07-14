#!/bin/bash
# find | xargs grep 으로 에러 메시지 찾기

logdir="$(pwd)"

# 확장자 .log 파일에서 "ERROR" 문자열 검색
# grep에서 /dev/null을 추가하면 find한 결과 파일이 하나라도 파일명을 출력할 수 있다.
find $logdir -name "*.log" -print | xargs grep "ERROR" /dev/null
