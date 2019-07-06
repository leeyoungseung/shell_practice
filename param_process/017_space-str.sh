#!/bin/bash
# 공백문자를 포함한 문자열을 변수로 사용하기
# 실행명령 : ./017_space-str.sh

result="invalid value"

# 변수 result를 ("") 따옴표로 감싸주었기에 하나의 문자열로 취급한다.
if [ "$result" = "invalid value" ]; then
 echo "ERROR 1: $result" 1>&2
 # exit 1
fi

# 변수를 ("")쌍따옴표로 감싸지 않으면 공백이 구분자로 취급되어 문자열 2개로 인식해버림
if [ $result = "invalid value" ]; then
 echo "ERROR 2: $result" 1>&2
 exit 1
fi

