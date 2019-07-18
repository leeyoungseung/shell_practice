#!/bin/bash
# 특정호스트 응답 평균시간 확인하기

ipaddr=$(route -n | awk '$1 == "0.0.0.0" {print $2}')
# ipaddr="192.168.2.1"
count=10

echo "Ping to : $ipaddr"
echo "Ping count: $count"
echo "Ping average[ms] : "

# ping 명령어 실행 결과를 임시 파일에 출력
ping -c $count $ipaddr > ping.$$

# "time=4.32 ms" 부분을 sed로 추출, awk로 평균값 계산
sed -n "s/^.*time=\(.*\) ms/\1/p" ping.$$ |\
echo "평균값은? [ $(awk '{sum+=$1} END{print sum/NR}') ]"

# 임시파일 삭제
rm -f ping.$$

