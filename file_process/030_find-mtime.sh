#!/bin/bash
# find 를 써서 특정기간에 작성, 변경된 파일의 목록을 가져오기

logdir=$(pwd)/docs

# 4일 전부터 2일 전까지 갱신된 파일목록을 표시
# -mtime 옵션으로 시간을 지정 (기본 계산 방식 : n 곱하기 24시간전)
# +n : n에서 지정한 시간보다 더 과거에 해당
# -n : n일전을 기준으로 그이후에 작성된 것이 해당
# n : n 에서 24시간 전까지
find $logdir -name "*.log" -mtime -4 -mtime +1 -print


