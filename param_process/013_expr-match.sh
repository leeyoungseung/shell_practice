#!/bin/bash
# html에서 특정 속성값을 가져오기(변수내부 문자열에서 특정패턴 추출하기)
# 실행명령 : ./013_expr-match.sh

quote="[\"']" # 작은 따옴표를 이스케이프 표시해서 저장한 변수 선언
match="[^\"']*" # ^(부정표현:뒤의문자를 제외한 문자를 출력) 하는 변수 선언

while read line
 do
  # expr 명령어를 사용해서 패턴에 해당하는 값을 가져오기
  href=$(expr "$line" : ".*href=${quote}\(${match}\)${quote}.*")
  if [ $? -eq 0 ]; then
   echo $href
  fi
done < ./docs/index.html

