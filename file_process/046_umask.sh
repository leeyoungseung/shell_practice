#!/bin/bash
# 셸 스크립트 내에서 작성한 파일의 접근권한을 설정해서 보안강화하기

umask 077 # 임시로 권한을 설정

# echo 명령어 출력을 권한 600인 임시 파일로 작성
echo "ID : abcd123456" > idinfo.tmp
ls -la

