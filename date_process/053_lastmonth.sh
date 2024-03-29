#!/bin/bash
# 기준날을 기준으로 한달이 지난 로그파일을 아카이브하기

logdir="/var/log/myapp"

# 이벌달 15일의 날짜 취득
thismonth=$(date '+%Y/%m/15 00:00:00')

# 지난달 날짜를 YYYMM으로 취득
# 1 month ago는 지난달의 같은 '날(일)'이 되므로 말일을 피하도록
# 변수 thismonth에 15일을 지정함
last_YYYYMM=$(date -d "$thismonth -1 month ago" '+%Y%m')

# 지난달 로그 파일을 아카이브
tar cvf ${last_YYYYMM}.tar ${logdir}/access.log-%{last_YYYYMM}*
# .tar파일로 아카이브하기
# 대상파일은 /access.log- 로 시작하고 중간에 지난달 변수가 들어가고
# * 모든파일이 대상

