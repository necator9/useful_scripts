#!/bin/bash

PROC_PID=$1
OUT_LOG=$2

header="Date Time Pid CPU MEM"
echo $header >> $OUT_LOG && echo $header

while true ; do
    line="$(date '+%x %X') $(ps -p $PROC_PID -o pid,pcpu,%mem --no-headers)"
    echo $line >> $OUT_LOG && echo $line
    sleep 300 
done
