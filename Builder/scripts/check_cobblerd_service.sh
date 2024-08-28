#!/bin/bash
# Check cobbler can serve requests

tries=0
MAX_TRIES=20

while [ ${tries} -lt ${MAX_TRIES} ]
do
  /usr/bin/cobbler version &>/dev/null
  result=$?
  [ ${result} -eq 0 ] && break
  let tries++
  sleep 1
done

exit ${result}
