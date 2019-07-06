#!/bin/bash
# 변수명을 확장해서 쓰기 + 파일안의 문자열이 몇개인지 표시(wc)
# 실행 명령 : ./019_varname.sh

today="20190701"
# shell 변수 today가 확장됨, wc명령어 + -l로 파일안의 줄수를 표시
wc -l $(pwd)/docs/${today}_log

# 이 경우는 확장이 되지 않는다.
# wc -l ./docs/$today_log

