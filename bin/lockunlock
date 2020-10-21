#!/bin/sh
PERIOD=1d
if [[ $# -ge 1 ]]; then
    PERIOD=$1
fi
echo "Times of Mac screen lock and unlock events in the past ${PERIOD}:"
SEARCH_FOR="going inactive, create activity semaphore|releasing the activity semaphore"
log show --style syslog --predicate 'process == "loginwindow"' --debug --info --last ${PERIOD} | grep -E "${SEARCH_FOR}" | cut -c '1-32 141-155'
