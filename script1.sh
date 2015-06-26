#!/bin/bash
clear
var=$(grep Completed tmp_more_than_50 | awk '{ if($2==200){ printf $5;} else{print $7;}print " "; }' | sort -r -n);
arrTIME=(${var})
max=("${arrTIME[@]:0:1}");
grep "$max" tmp_more_than_50 | awk '{print $1, $2, $3, $4, $5;}'