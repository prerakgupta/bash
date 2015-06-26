#!/bin/bash
clear
time=0ms
var=$(grep Completed tmp_more_than_50 | awk '{ if($2==200){ printf $5;} else{print $7;}print " "; }');
arrTIME=(${var})
for i in "${!arrTIME[@]}"; do
    if [[ "$time" < "${arrTIME[i]}" ]]; then time="${arrTIME[i]}"; fi;
done
echo "Maximum process time is $time"
grep "$time" tmp_more_than_50 | awk '{print $1, $2, $3, $4, $5;}'