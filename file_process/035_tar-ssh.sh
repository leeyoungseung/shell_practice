#!/bin/bash
# 원격서버에 직접 파일저장하기

username="user1"
server="192.168.1.5"

# 1 : tar로log디렉터리를 아카이브한다.
# 2 : ssh 명령어로 ㅣ지정된 유저와 서버명에 해당하는곳에 보내기
# 3 : 원격서버의  아카이브한 내용 출력
tar cvf - myapp/log | ssh ${username}@${server} "cat > /backup/myapplog.tar"

