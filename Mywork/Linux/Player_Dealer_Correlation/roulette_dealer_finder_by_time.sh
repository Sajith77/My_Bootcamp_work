#!/bin/bash

#  Input date and time 
read -p "Enter the date you are searching in this format MMDD " date 
read -p "Enter  AM/PM " T
read -p "Enter the time in this format hr in 12 " time

#  Enter

 tt="$time:00:00 $T"


find . -type f -iname $date* -print0 | xargs -0 grep "$tt"

