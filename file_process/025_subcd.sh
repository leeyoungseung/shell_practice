#!/bin/bash
# 서브 셸 사용하기 서브쉘과 메인 쉘의 실행위치는 별개로 취급한다.
# 실행명령 : ./025_subcd.sh

# 괄호 안은 서브 셸이 되므로 디렉터리 이동은 이 안에서만 유효
(
 echo "Archive : /var/tmp/archive.tar"
 # cd /var/tmp
 # tar cvf archive.tar *.txt
 cd $(pwd)/tmp # cd 명령어로 tmp폴더로 이동한다.
 ls -la
)

# 스크립트 실행은 현재 디렉터리에서 처리
echo "Start : 025_command.sh" 
# 본쉘의실행위치는 변하지 않는다.
./025_command.sh
