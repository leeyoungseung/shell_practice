#!/bin/bash

# 압축명령어 진행 상태를 표시하기
# 실행명령
# ./010_tar-pv.sh

DATA_DIR=./docs

cd $DATA_DIR
tar cf - bigfile1.dat bigfile2.dat | pv | gzip > archive.tar.gz

