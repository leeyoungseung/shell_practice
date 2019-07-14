#!/bin/bash
# touch 명령어로 파일의 타임스탬프를 갱신하기

# [YYYYMMDDhhmm.SS]로 [년월일시분.초] 지정
timestamp="201911240123.55"

# 파일 타임스탬프 갱신
# -c 옵션이 있으므로 lock 파일은 신규 파일을 만들지 않음
touch -t $timestamp app1.log
touch -c -t $timestamp lock.tmp

path=$(pwd)
echo "------------------app1.log----------------------"
echo $(stat "$path/app1.log")
echo "------------------lock.tmp----------------------"
echo $(stat "$path/lock.tmp")
