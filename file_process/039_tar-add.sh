#!/bin/bash
# 기존의 tar 아카이브에 파일을 추가하기

# 년월로 아카이브 파일 지정(예 : 201907.log)
archivefile="$(date +'%Y%m').tar"
# 오늘 날짜로 로그 파일 지정(예: 20190705.log)
logfile="$(date +'%Y%m%d').log"
# 월별 아카이브에 오늘 로그 추가
# -r 옵션을 사용해서 새로운 로그파일을 추가한다.
tar rvf $archivefile log/$logfile

