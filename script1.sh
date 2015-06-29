#!/bin/bash
clear
var=$(grep Completed tmp_more_than_50 | awk '{ if($2==200){ printf $5;} else{print $7;}print " "; }' | sort -r -n);
arrTIME=(${var})
max=("${arrTIME[@]:0:1}");
grep -B 1 "$max" tmp_more_than_50 
