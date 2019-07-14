#!/bin/bash
# 압축할때 특정 파일이나 디렉토리를 제외하기

#  -exclude 옵션으로 지정가능
tar cvf archive.tar -exclude ".svn" myapp

# 다수의 파일이나 폴더를 제외 시킬 때
# -X 옵션을 지정해서 .lit파일로 제외 목록을 설정한다.
tar cvf archive.tar -X exclude.lst myapp
