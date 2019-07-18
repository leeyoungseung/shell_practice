#!/bin/bash

# route 명령어 출력에서 디폴트 게이트웨이 얻기
# 첫번째 컬럼이 "0.0.0.0"인 줄의 두 번째 컬럼을 추출
gateway=$(route -n | awk '$1 == "0.0.0.0" {print $2}')

# 디폴트 게이트웨이에 ping,
# -c 옵션을 사용해서 1번만 보내기
# 출력은 null로 리다이렉트해서 버리기
ping -c 1 $gateway > /dev/null 2>&1

# ping 종료 스테이터스로 성공, 실패 확인
# $? =  특수변수로 명령어의 종료상태를 알려줌 0이면 성공
if [ $? -eq 0 ]; then
 echo "[Success] ping -> $gateway"
else
 echo "[Failed] ping -> $gateway"
fi


