#!/bin/bash
# strings 명령어로 바이너리 코드에서 문자열 추출해서 검색하기

# 검색할 에러 메시지
message="Unknown Error"
path=$(pwd)/docs

# -f 옵션으로 문자열표시시 파일명도 같이 출력할 수 있다.
strings -f ${path}/* | grep "$message"

