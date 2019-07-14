#!/bin/bash
# 두 디렉터리를 비교해서 파일목록 만들기
# 비교할 디렉터리x
dirA="tmp"
dirB="tmp2"

# dir1/과 dir2/ 파일목록 차이를 조사하기
( cd tmp; find . -maxdepth 1 -type f -print | sort) > dir1-file.lst
( cd tmp2; find . -maxdepth 1 -type f -print | sort) > dir2-file.lst

comm dir1-file.lst dir2-file.lst

