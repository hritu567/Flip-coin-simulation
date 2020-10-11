#!/bin/bash -x
head=0
tail=0
var=$((RANDOM%2))
while [ $head -lt 11 ] && [ $tail -lt 11 ]
do
if [ $var -eq 1 ]
  then 
     ((head++))
else
     ((tail++))
fi
done
if [ $head -gt $tail ]
  then
    echo " head wins : " $head
else
    echo "tail wins : " $tail
fi