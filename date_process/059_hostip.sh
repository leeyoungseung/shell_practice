#!/bin/bash
# 호스트명으로 ip주소를 얻어오기

# IP주소를 얻고 싶은 호스트명 정의
# fqdn="www.google.com"
fqdn="www.naver.com"

echo "Address if $fqdn"
echo "============================="

# host 명령어로 IP주소 얻기, awk 가공해서 출력
# DNS 서버에 문의해서 이름해석을 하는 명령어는 host이외에도 nslookup, dig 명령어를 사용할수 있음
host $fqdn | \
awk '/has address/ {print $NF,"IPv4"} \
/has IPv6 address/ {print $NF,"IPv6"}'



