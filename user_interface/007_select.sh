#!/bin/bash
# 반복하면서 분기(case)에 해당하는 처리하기
# 실행명령
# ./007_select.sh

while :
 do
  echo "Menu: "
  echo "1) list file"
  echo "2) current directory"
  echo "3) exit"
  read number # 키보드로 부터 값 입력받기
  case $number in # 입력받은 값에 해당하는 케이스 찾기
   1)
    ls
    ;;
   2)
    pwd
    ;;
   3)
    exit
    ;;
   *) # *는 입력받은 값 이외의 처리에 사용됨
    echo "Error: Unknown Command"
    ;;
   esac

   echo
 done
