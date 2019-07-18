#!/bin/bash
# ftp로 서버에 로그인시 자동으로 파일 내려받기 

# FTP 접속설정
server="192.168.2.5" # 접속할 ftp 서버
user="user1" # ftp 서버 login id
password="xxxxxx" # ftp 서버 login pw
dir="/home/user1/myapp/log" # ftp 서버의 파일보존 디렉터리
filename="app.log" # 내려받을 파일명

ftp -n "$server" << __EOT__
user "$user" "$password"
binary
cd "$dir"
get "$filename"
__EOT__


