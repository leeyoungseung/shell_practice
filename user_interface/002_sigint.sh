#!/bin/bash
# trap 명령어를 사용하여 시그널을 받았을때 쉘이 종료되기전 무언가 처리할 수 있다.
# 실행 명령어
# ./002_sigint.sh http://www.example.org

count=0
trap ' echo 
      echo "Try count: $count"
      exit ' INT

while : 
 do
  curl -o /dev/null $1
  count=$(expr $count + 1)
  sleep 1
 done
