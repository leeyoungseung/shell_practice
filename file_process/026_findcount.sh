#!/bin/bash
# 지정한 디렉터리의 파일과 디렉터리의 수를 조사하기
# 실행명령 : ./026_findcount.sh
# targetdir="/home/user1/myapp/work"
targetdir="$(pwd)" # 대상 디렉터리 지정

cat << 'EOT'
find는파일을 찾을때 많이 사용하는 명령어로 사용법은 다음과 같다
find [path] [-option]
option에는 
-name : 찾고싶은 파일이나 디렉터리 이름의 패턴을 지정하기
-type : 검색하고 싶은 파일의 타입을 지정하기
 -type b : 블록 스페셜 파일
 -type c : 캐릭터 스페셜파일
 -type d : 디렉터리
 -type p : 파이프
 -type f : 일반파일
 -type l : 심볼릭링크
 -type s : 소켓
-maxdepth 1 : 옵션을 지정한 이유는 find명령어는 하위폴더의 내용도 기본적으로 조사하기때문에 특정 폴더 만을 지정하기 위해서 이다.
-print 옵션은 생략해도 무방하다. 기본으로 경로를 출력한다.
EOT
filecount=$(find "$targetdir" -maxdepth 1 -type f -print | wc -l)
dircount=$(find "$targetdir" -maxdepth 1 -type d -print | wc -l)

dircount=$(expr $dircount - 1) # 명령어를 실행한 대상경로가 포함되므로 -1을 해준다.

echo "대상 디렉터리 : $targetdir"
echo "파일 수 : $filecount"
echo "디렉터리 수 : $dircount"

