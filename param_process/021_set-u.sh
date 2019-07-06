#!/bin/bash
# 선언되지 않은 변수가 사용되면 에러를 발생시킴rm -rf / 와같은 시스템에 심각한 손상을 주는 명령어를 방지 할 수 있음
# 실행 명령 : ./021_set-u.sh

# set -u를 사용해서 선언안된 변수를 사용시 에러를 발생하게함
set -u

COPY_DIR=/myapp/work

# COPY_DIR이 나닌 COP_DIR로 잘못입력함
cp myapp.log $COP_DIR

