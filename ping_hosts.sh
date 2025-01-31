#!/bin/sh

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

COUNT=1
TIMEOUT=1
IP_LIST=/tmp/ips

if [ ! -f "$IP_LIST" ]; then
  echo "File \"$IP_LIST\" does not exist, please populate with list of IPs."
  return 1
fi

I=1

for IP in $(cat $IP_LIST)
do
   ping -c $COUNT -W $TIMEOUT $IP 2>/dev/null -q 1>/dev/null

   if [ $? -eq 0 ]; then
     echo "${I}) ${GREEN}${IP}${NC}"
   else    
     echo "${I}) ${RED}${IP}${NC}*"
   fi
I=$((I+1))

done