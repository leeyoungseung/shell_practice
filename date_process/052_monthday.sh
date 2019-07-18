#!/bin/bash
# 말일을 확인하는 방법
# 연초, 월초는 1일이라는 기준이 있음
# 말일은 28,29,30,31 기준이다름
# 따라서 말일의 다음날이 1인인지에의해서 기준을 정해서 말일을 판단함

tomorrow=$(date "+%d" -d '1 day')
# mac의 경우는 조금 명령어가 다름(-d 옵션을 쓸 수 없음)
# $(date -v+1d "+%d")

if [ "$tomorrow" = "01" ]; then
 # 오늘이 말일이라면 월별 리포트를 작성하는 외부 스크립트 실행
 # ./monthly_report.sh
 echo $tomorrow
 exit 0
fi
echo "오늘은 말일이 아님"


