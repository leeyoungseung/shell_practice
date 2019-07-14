#!/bin/bash
# 오래된 파일을 찾아서 삭제하기 (find | xargs 조합)

#logdir=$(pwd)/tmp
logdir=$(pwd)

# 지정한 날에  생성한 파일의 내용 출력하기
find $logdir -name "*.sh" -mtime 7 -print | xargs cat

# 최종 갱신일이 1년이상된 오래된 파일 삭제
#find $logdir -name "*.log" -mtime +364 -print | xargs rm -fv



