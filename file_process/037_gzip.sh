#!/bin/bash
# gzip명령어로 압축률지정해서 압축하기

pathdir=$(pwd)/tmp
tar cf $pathdir/archive2.tar $pathdir/log

# -9 옵션으로 압축률을 최대로함
# (기본값은 6이며 1~9까지 숫자 지정가능.
# 숫자가 클수록 압축률도 올라간다.)
gzip -9 $pathdir/archive2.tar $pathdir/log

ls -la $pathdir
