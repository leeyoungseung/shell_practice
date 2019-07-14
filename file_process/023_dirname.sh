#!/bin/bash
# 파일이 실행된 패스에 관계없이 shell을 정상적으로 실행하기
# 실행 명령 : ./file_process/023_dirname.sh

# dirname 명령어를 사용해서 현재실행되는 쉘의 디렉터리위치를 가져온다
# 그 후 cd 명령어로 원래 쉘 파일이 위치한 곳으로 쉘 실행의 홈을 변경한다. 
cd "$(dirname "$0")"
echo "Here is : $(pwd)"

./023_start.sh
./023_end.sh
