#!/bin/bash
# 달력 다이얼 로그를 표시하여 선택한 날짜의 로그파일을 지우기
# 실행명령 
# ./009_dialog-calendar.sh

LOG_DIR=./docs

# dialog명령어로 달력 출력
# 선택한 날짜는 표준 에러 출력이므로 임시 파일에 리다이렉트
dialog --calendar "Select Date" 2 60 2> cal.tmp

# 달력 기능은 일/월/년 형식으로 출력되므로 년월일로 바꿈
date_str=$(awk -F / '{print $3$2$1}' cal.tmp)
echo "Selected Time is : $date_str"

# 취소되면 임시 파일을 삭제하고 종료
if [ -z "$date_str" ]; then
 echo 'Cancel remove log file'
 rm -f cal.tmp
 exit
fi

# 삭제되는 파일형식은 [ 파일명.날짜 ]
# ex) app_log.20190629
rm -i ${LOG_DIR}/app_log.$date_str

#임시 파일 삭제
rm -f cal.tmp

