#!/bin/bash
# 파일의 권한과 타입스탬프를 유지한 채로 복사하기
# 실행명령 : ./040_cp-p.sh a ; ./040_cp-p.sh

myapp="$(pwd)/tmp"
backup_dir="$(pwd)/tmp3"

# myapp 디렉터리를 $backup_dir 밑에 백업 복사
while getopts "a" option
do
 case $option in
  a) # cp 명령어의 -a 옵션을 지정시 퍼미션과 타임스탬프를 유지할 수 있음
    echo "옵션 지정"
    cp -a $myapp "$backup_dir"
    # ls -la
    stat $myapp
    stat $backup_dir
    exit
    ;;
 esac
done

echo "옵션 미지정"
cp -R $myapp "$backup_dir"
ls -la
stat $myapp
stat $backup_dir
