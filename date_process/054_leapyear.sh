#!/bin/bash
# 윤년인지 확인하기

# 네 자리 연도 얻기
year=$(date '+%Y')

logfile="/var/log/myapp/access.log-"

# 년도를 나눈 나머지 계산
mod1=$(expr $year % 4)
mod2=$(expr $year % 100)
mod3=$(expr $year % 400)

# 윤년인지 판정
# 판정하는 방법
# 1. 서력이 4로 나누어 떨어지는지
# -eq 값이 같은지 확인
# 2. 단, 100으로 나누어떨어지면 안됨
# -ne 같지 않는지 확인
# 3. 단, 400으로 나누어 떨어지면 윤년이다.
# -a는 AND -o는 OR 연산자이다
if [ $mod1 -eq 0 -a $mod2 -ne 0 -o $mod3 -eq 0 ]; then
 echo "leap year:$year"
 ls "${logfile}${year}0229"
else
 echo "not leap year:$year"
 ls "${logfile}${year}0228"
fi


