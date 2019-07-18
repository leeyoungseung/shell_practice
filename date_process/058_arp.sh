#!/bin/bash
# 특정 ip주소를 지정해서 대상의 물리 주소를 검색할때

ipaddr=$(route -n | awk '$1 == "0.0.0.0" {print $2}')

# arp 명령어를 사용해서 ARP캐쉬를 검색해 mac 주소를 가져온다
macaddr=$(arp -a -n | awk "/\($ipaddr\)/ {print \$4}")

if [ -n "$macaddr" ]; then
 echo "$ipaddr -> $macaddr"
else
 echo "ipaddr가 ARP 캐쉬에 없습니다"
fi


