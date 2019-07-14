#!/bin/bash
# 디렉터리의 디스크 사용량 표시하기

# data_dir="$(pwd)"

# $data_dir 디렉터리의 서브 디렉터리 용량 표시
du -sk $(pwd)/*/ | sort -rn

# -h 옵션을 쓰면 m,k등의 사람이 읽기쉽게 표현가능하지만 sort를 할수 없음
du -h $pwd

