#!/bin/bash
# 두개의 파일을 비교해서 오래된 파일을 삭제하기

# 비교대상 파일
path=$(pwd)/tmp
log1="$path/log1.log"
log2="$path/log2.log"

# 인수파일이 존재하는지 확인해서 존재하지 않으면 종료
filecheck()
{
 if [ ! -e "$1" ]; then
  echo "ERROR: File $1 does not exist." >&2
  exit 1;
 fi
}

filecheck "$log1"
filecheck "$log2"

# 두 파일을 비교해서 오래된 쪽 삭제
if [ "$log1" -nt "$log2" ]; then
 echo "[$log1]->newer, [$log2]->older"
 rm $log2
else
 echo "[$log2]->newer, [$log1]->older"
 rm $log1
fi

