#!/bin/bash
# .svn같은 숨긴파일만 표시하기

# IFS에 줄바꿈 설정
IFS='
'

# 현재 디렉터리 아래에 있는 파일을 $filename으로 순서대로 처리
for filename in $(ls -AF) # A 옵션으로 숨긴파일도 검색, -F 옵션으로 디렉터리인지 파일인지 구별 (디렉터리면 / 가 뒤에 붙는다)
do
 case "$filename" in
 .*/)
  echo "dot directory : $filename"
 ;;
 .*)
  echo "dot file : $filename"
 ;;
 esac
done


