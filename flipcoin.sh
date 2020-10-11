#!/bin/bash -x
read -p "Enter number of times to be tossed " num
tails=0
heads=0
for ((counter=1; counter<=$num;counter++))
do
coin=$((RANDOM%2))
if [ $coin -eq 0 ]
then
  ((tails++))
else
   ((heads++))
fi 

done
echo "Tails was tossed $tails times"
echo "Heads was tossed $heads times"