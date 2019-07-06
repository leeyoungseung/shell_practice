#!/bin/bash
# 함수 내부에서 사용하는 변수 정의하기
# 실행명령 : ./012_local-var.sh

# 1. 함수 바깥에서 사용할 변수
DIR=/home/ec2-user/shell_practice/param_process/tmp

ls_home() # 함수 선언
{
# 2. 변수 DIR을 함수 내부 변수로 정의하기
local DIR

DIR=$1/docs
echo "In function directory: $DIR"
ls $DIR
}
#ls_home /home/ec2-user/shell_practice/param_process/docs
ls_home $(pwd)

echo "Out function directory: $DIR"
ls $DIR
