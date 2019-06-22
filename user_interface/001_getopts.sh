#!/bin/bash
# 옵션에 따라서 동작을 변경하고 싶을때 사용
# 실행명령
# ./001_getopts.sh -a -p '===========sep========' /home/ec2-user/shell_practice/user_interface/docs

a_flag=0
separator=""
while getopts "ap:" option
 do
  case $option in
   a)
     a_flag=1
     echo "set option A"
     ;;
   p)
     separator="$OPTARG"
     echo "set option B"
     ;;
   \?)
     echo "Usage: getopts.sh [-a] [-p separator] target_dir" 1>&2
     exit 1
     ;;
  esac
 done

shift $( expr $OPTIND - 1)
path="$1"

if [ $a_flag -eq 1 ]; then
 ls -a -- "$path"
else
 ls -- "$path"
fi

if [ -n "$separator" ]; then
 echo "$separator"
fi
 
