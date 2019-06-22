#!/bin/bash
# 콘솔에서 입력 받은 값을 변수에 담아 사용하기
# 실행명령
# ./003_read.sh

echo "If you want to continue auth process, Please input key anything"
read dummy

echo -n "Please input your old (only number) : "
read old
echo "Is your old [ $old ] please input [ yes or no ]"
read check

if [ $check == 'yes' ]; then 
 echo "Finish old check [ $old ]"
 exit 0
else
 echo "Fail old check"
 exit 1
fi
