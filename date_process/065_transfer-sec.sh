#!/bin/bash
# 서버에 파일을 전송할떄 통신속도 측정하기

# 전송속도를 측정할 임시 파일 크기지정. 단위는 킬로바이트(KB)
filesize=1024

# 전송속도를 측정할 임시 파일명
tmpdata="tmpdata.tmp"
timefile="timecount.tmp"

# 전송에 사용할 임시파일 작성
dd if=/dev/zero of="$tmpdata" count=$filesize bs=1024 2> /dev/null

# FTP 접속해서 파일을 PUT
server="192.168.2.5"
user="user1"
password="xxxxxxxx"

echo "Filesize : $filesize (KB)"
echo "FTP Server : $server"
(time -p ftp -n "$server") << __EOT__ 2> "$timefile"
user "$user" "$password"
binary
put "$tmpdata"
__EOT__

# time 명령어 출력 결과에서 실제 시간을 얻은 후 나눠서 속도 계산
realtime=$(awk '/^real / {print $2}' "$timefile")
speed=$(echo "${filesize}/${realtime}" | bc)
echo "Transfer Speed : $speed (KB/sec)"

# 임시파일 삭제
rm -f "$tmpdata" "$timefile"



