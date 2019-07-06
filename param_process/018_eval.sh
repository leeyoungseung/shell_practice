#!/bin/bash
# 파일안의 문자열(명령어)을 추출해서 실행하기 
# 실행명령 : ./018_eval.sh

# 1. 파일의 경로를 변수에 담기
filepath="$(pwd)/docs"
echo "filepath : $filepath"

# 2. 외부 파일에서 사용할 변수 선언
filename="$filepath/myapp.log"
echo "filename : $filename"

# 3. sed 명령어로 가져온 문자열을 eval명령어로 실행
eval $(sed -n "s/<code>\(.*\)<\/code>/\1/p" "$filepath"/command.htm)

