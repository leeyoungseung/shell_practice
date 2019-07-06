#!/bin/bash
# expr 명령어로 숫자계산하기전에 정수값인지 확인하기
# 실행명령 : ./014_int-check 10

# 인수가 정수인지 확인
# test 명령어로 정수 인지 확인
# 1) 인수가 0과 같으면 0이나옴, 
# 2) 인수가 0이 아니면 1
# 3) 인수가 문자열이라면 2를 출력
test "$1" -eq 0 2>/dev/null # 2가 출력된경우 null로 리다이렉트 시킨다

if [ $? -lt 2 ]; then
 echo "Argument is Integer."
 expr 10 + $1
 expr 5 - $1
 expr 10 \* $1
 expr 5 / $1
else
 echo "Argument is not Integer."
 exit 1
fi
