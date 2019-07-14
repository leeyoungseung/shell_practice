#!/bin/bash
# 디렉터리동기화를 사용해서 파일 백업하기 & 다른 서버로의 백업 (rsync)

log_dir="$(pwd)/tmp"
backup_dir="$(pwd)/tmp2"

# log_dir 안에 있는 로그 파일을
# backup_dir 디렉터리에 복사
# rsync -av "$log_dir" "$backup_dir"

# n 옵션을 붙이면 실제로 복사하지 않고 사전에 확인만 할 수 있다.
rsync -avn "$log_dir" "$backup_dir"

# 다른 서버에 저장할때 
# rsync -av -e ssh "$log_dir" user1@server1:"$backup_dir"



