#!/bin/bash
# 간이 서버 띄우기
# 물리적 서버 네트워크가 개통되었는지 간단히 패킷으로 확인할때 사용 
# 예제 61과 같이 사용하면 유용하다

port=8080
# -v : 상세모드로 접속이 있으면 메시지를 표시함
# -l : 듣기모드로 실행됨 
# -k : 종료하는ctrl + c 키가 입력될때까지 통신대기하기
nc -v -k -l $port


