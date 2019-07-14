#!/bin/bash
# $$명령어로 임시 파일 생성하기

tmpfile="tmp.$$"

date > $tmpfile
sleep 10
echo "----------------- 임시파일 있는지 확인-----------------"
ls -la


cat $tmpfile
rm -f $tmpfile
echo "----------------- 임시파일 삭제 확인 ------------------"
ls -la 
