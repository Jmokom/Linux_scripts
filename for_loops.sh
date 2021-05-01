#!/bin/bash

states=('nebraska' 'Montana' 'Texas' 'Hawaii' 'Washington')

for state in ${states[@]}
do
     if [ $state == 'Hawaii' ]
     then
	echo "Hawaii is the best!"
     else
	echo "I'm not a fan of Hawaii"
     fi
done

# list of numbers
nums=$(echo {0..9})

for num in ${nums[@]}
do
  if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
  then
  echo $num
  fi
done

ls_out=$(ls)

for x in ${ls_out[@]}
do
  echo $x
done
