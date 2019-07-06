#!/bin/bash
# 외부파일에 변수나 함수를 정의해서 사용하기
# 실행명령 : ./016_source.sh

. ./016_env.sh # (.) 명령어를 사용해서 env파일의 내용을 읽어오기 bash 셸이라면 source 명령어 사용가능

nowtime # env파일에 정의한 함수를 사용하기
#cp -i -v large-file.tar.gz "$WORK_DIR" 
ls $WORK_DIR # env파일에 정의한 변수 사용하기
nowtime
