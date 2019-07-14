#!/bin/bash
# 도움말 또는 실행되는 shell파일의 이름을 취득하기
# 실행명령 : ./basename.sh 또는 ./basename.sh HELLO

# basename 명령어는 shell파일의 이름을 포함한 경로에서  파일이름만을을 가져온다
# shell에서 첫번째 인수는 실행되는 shell파일의 이름을 포함한 경로이다.
prog=$(basename "$0")

# 인수가 하나가 아니면 도움말<파일명>을 표시하고 종료
if [ $# -ne 1 ]; then
 echo "Usage: $prog <string>" 1>&2
 exit 1
fi

# 명령행 인수 $1 표시
echo "Start : $prog..."
echo "Input Argument : $1"
echo "Stop : $prog ..."
