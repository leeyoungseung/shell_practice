#!/bin/bash
# 한개의 문자만을 입력받기 (입력이 끝남과 동시에 다름의 처리로 진행됨 < Enter키 필요없음>)
# 실행명령 ./005_getchar.sh

echo -n "Choice your Answer [y/n] : "
# 현재의 터미널 설정을 변수 tty_state에 백업하기
tty_state=$(stty -g)
stty raw
# 키보드에서 문자 하나 읽어오기
char=$(dd bs=1 count=1 2> /dev/null)
# 터미널 설정을 원래대로 변경하기
stty "$tty_state"
echo

# 입력된 문자에 따라 처리하기
case "$char" in
 [yY])
  echo "Input : [ Yes ]"
  ;;
 [nN])
  echo "Input : [ NO ]"
  ;;
 *)
  echo "Input : Failed Input"
  ;;
esac
