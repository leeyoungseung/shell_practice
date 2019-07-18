#!/bin/bash
# 로컬에 있는 쉘 스크립트를 다른 서버에서 실행하기
# < 이 파일은 로컬에서 실행하는 파일 >

username="user1"
script="067_check.sh" # < 리모트로 실행될 쉘스크립트 지정 >

cat $script | ssh ${username}@192.168.2.4 "sh"
cat $script | ssh ${username}@192.168.2.5 "sh"
cat $script | ssh ${username}@192.168.2.6 "sh"



