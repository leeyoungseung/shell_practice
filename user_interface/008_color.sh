#!/bin/bash

# 문자열 출력시 색을 지정하기
# 실행명령
# ./008_color.sh

echo "Script Start."

# 배경을 회색, 문자색을 빨강으로 바꿈; -e 옵션으로 이스케이프 시퀸스 처리를 했음
# 시퀀스 문법 : \033[파라미터m  표시할 문자열 \033[0m

# 색 지정값 
# 	검정 빨강 초록 노랑 파랑 보라 하늘 흰색
# 문자	30   31   32   33   34   35   36   37
# 배경	40   41   42   43   44   45   46   47
echo -e "\033[47;31m Important Message \033[0m"

# 이스케이프처리를 안할 시 
echo "\033[47;31m Important Message \033[0m"

echo "Script End"
