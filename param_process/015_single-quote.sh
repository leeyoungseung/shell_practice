#!/bin/bash
# 작은 따옴표로 둘러싸인 문자열에서 작은따옴표 표시와 , 변수 값출력하기
# 실행 명령 : ./015_single-quote.sh

price=100
str='It costs $'$price'? I can'\''t believe it!'
str2="It costs \$$price? I can't believe it!"
echo $str
echo $str2
