#!/bin/bash


# 파일을 읽는 중에 키보드로부터 입력을 받는코드
# 실행명령
# ./006_read-redirect.sh

#tty='tty' <- 책이 틀렸음


tty='/dev/tty' # 이렇게 수정해주어야 파일입려도중 입력가능
while read question # 2) 택스트 파일의 내용을 한줄씩 읽어오기
 do
  echo "question is : $question" # 3) 파일의 내용출력
  read dir <$tty # 4) 파일의 내용을 읽는 중간에 키보드 입력 받기 
  echo "Command: ls $dir" # 5) 키보드로 입력된 내용을 출력
ls $dir # 6) 키보드로 입력된 내용의 명령어 실행
# $dir # 명령어 를 직접 입력받아 쓸수도 있음
done < question.txt # 1) 텍스트 파일의 내용불러오기
