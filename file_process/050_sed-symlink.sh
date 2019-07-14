#!/bin/bash
# sed 명령어 사용할때 심볼릭링크를 실제파일로 바꾸는 것 방지

filename="target.txt"

if [ ! -e "$filename" ]; then
 # 대상 파일이 존재하지 않으면 에러 종료
 echo "ERROR : File not exists." >&2
 exit 1
elif [ -h "$filename" ]; then # -h 로 심볼릭 링크인지 확인하기
 # 대상 파일이 심볼릭 링크면 readlink 명령어로
 # 실제 파일을 대상으로 처리하기
 # 1. sed의 i옵션을 사용하면 파일을 덮어쓸 수 있음
 # 2. readlink 명령어로 실제 파일의 경로를 얻어 올 수 있음 
 sed -i.bak "s/Hello/Hi/g" "$(readlink "$filename")"
else
 sed -i.bak "s/Hello/Hi/g" "$filename"
fi

