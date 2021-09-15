#!/bin/bash

read -p "Enter the date MMDD " dd
read -p "Enter the time 12hr eg 12:00:00 AM " tt
read -p "Enter the game BlackJack =2 /Roulette =3 /Texas_Hold_EM =4" gg

if [ $gg -eq 2 ]; then 

find . -type f -iname $dd* -print0 | xargs -0 grep "$tt" |awk -F '\t' '{print $2}'

elif [ $gg -eq 3 ]; then

find . -type f -iname $dd* -print0 | xargs -0 grep "$tt" |awk -F '\t' '{print $3}'

elif [ $gg -eq 4 ]; then

find . -type f -iname $dd* -print0 | xargs -0 grep "$tt" |awk -F '\t' '{print $4}'

else
echo "please enter valid arguments"

fi
