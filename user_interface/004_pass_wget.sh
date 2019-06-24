#!/bin/bash
# 비밀번호 입력시 
# 실행 명령
# ./004_pass_wget.sh

userid=guest
hostid=localhost

echo -n "password : "
# 입력되는 내용이 표시되지 않게설정하기
stty -echo
read password
# 입력되는 내용이 표시되도록 재설정하기
stty echo

wget -q -password="$password" "ftp://${userid}@${hostid}/filename.txt"
