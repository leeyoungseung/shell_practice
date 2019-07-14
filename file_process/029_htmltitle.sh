#!/bin/bash
# html파일에서 특정 문자열을 추출해서 txt파일로 저장하기

# 현재 디렉터리에 있는 .html 파일이 대상
for htmlfile in *.html
do
 # 파일명에서 확장자를 뺀 문자열을 취득
 fname=$(basename $htmlfile .html)

 # <title> 태그 내용을 후방참조\1로 추출, 파일 출력
 sed -n "s/^.*<title>\(.*\)<\/title>.*$/\1/p" $htmlfile > output/${fname}.txt
done

path=$(pwd)/output
ls $path
echo "----------------------check file string-----------------------------"

cd $path
for result in *.txt
 do 
 # 결과 보기
 cat $result
done 


