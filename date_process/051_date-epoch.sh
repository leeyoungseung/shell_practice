#!/bin/bash
# 날짜계산하기 (리눅스)
# 나라별로 시간표현이 다르므로 epoch로 변환후 계산한다.


# 비교할 두 날짜를 변수로 정의
day1="2012/04/01 10:49:41"
day2="2012/03/30 08:31:52"

# 날짜에서 epoch 초를 얻으려면 +%s 사용
day1_epoch=$(date -d "$day1" '+%s')
day2_epoch=$(date -d "$day2" '+%s')

echo "day1($day1): $day1_epoch"
echo "day2($day2): $day2_epoch"

# 두날짜의 epoch 초끼리 뺀 값을 
# 하루 == 24h == 1440m == 86400s 로 나누면 날짜계산 가능
echo "day interval:"
expr \( $day1_epoch - $day2_epoch \) / 86400
echo $day_interval


