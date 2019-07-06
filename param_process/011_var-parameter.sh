#!/bin/bash
# 환경변수가 있으면 사용하고, 없으면 스크립트에 설정한 기본값 사용하기
# 실행명령 : ./011_var-parameter.sh

cp ./docs/exemple.txt ./${TMPDIR:=./tmp} # := 로 값을 대입하면 이미 값이 있을경우 기존의 값을 사용, 기존의 값이 없으면 값을 대입한다.
cd ./$TMPDIR
# tar xzf largefile.tar.gz
ls -la

res=$(pwd)
echo "Extract files to $TMPDIR"
echo "Extract files to $res" 
