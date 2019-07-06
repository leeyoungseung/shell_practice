#!/bin/bash
# 명령어 실행의 결과를 변수에담기 + grep으로 문자열 찾기 + grep으로 찾는 문자열의 수 출력
# 실행 명령 : ./020_comsub.sh

hostname='server1'
dirname="$(pwd)/docs"

err_count=$(grep -c "ERROR" "$dirname/$hostname.log")
echo "Error counts: $err_count"

grep "ERROR" "$dirname/$hostname.log"

