#!/bin/bash
# 확장자가 서로다른 파일을 지정한 확장자로 일괄 변경하기

cd $(pwd)/041_docs
echo "----------------변경전------------------"
ls -la
for filename in *
do
 case "$filename" in
  *.htm | *.html)
  # 파일명 앞 부분을 취득(index)
  headname=${filename%.*}

  # 파일명을 .txt로 변환
  mv "$filename" "${headname}.txt"
  ;;
 esac
done
echo "----------------변경후------------------"
ls -la
