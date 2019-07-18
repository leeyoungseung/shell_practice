#!/bin/bash
# 특정포트가 열려있는지 확인하기

ipaddr="192.168.2.52"
faillog="fail-port.log"

# 확인할 포트는 80, 2222, 8080
for port in 80, 2222, 8080
 do
  echo "port check ip : $ipaddr $port"
  # nc 명령어로 네트워크 확인
  # -z : 3 way 핸드 쉐이크만 하고 실제 데이터 통신은 하지 않음
  # -w : 타임아웃 설정
  nc -w 5 -z $ipaddr $port
 
  if [ $? -ne 0 ]; then
   echo "Failed at port: $port" >> "$faillog"
  else
   echo "Open this port : $port"
  fi
done



