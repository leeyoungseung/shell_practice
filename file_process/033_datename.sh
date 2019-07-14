#!/bin/bash
# 파일명에 백업시간을 기록한 백업파일만들기 

pathdir=$(pwd)/tmp
config="myapp.conf"

bak_filename="${pathdir}/${config}.$(date '+%Y%m%d')"

# 이미 myapp.conf.20131202 등이 있으면 초까지 낳어서 백업파일 작성
if [ -e $bak_filename ]; then
 bak_filename="${pathdir}/${config}.$(date '+%Y%m%d%H%M.%S')"
fi

# 백업파일 복사하기
cp -v "$config" "$bak_filename"

# 확인하기
ls $pathdir
