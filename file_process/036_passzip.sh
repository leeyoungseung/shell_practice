#!/bin/bash
# zip으로 아카이브 할때 비번설정하기

logdir="$(pwd)/tmp"

cd "$logdir"

# logdir 디렉터리에 있는 로그 파일을
# 암호걸린 zip으로 보관
zip -e -r log.zip log
