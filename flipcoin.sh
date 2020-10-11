#!/bin/bash -x
read -p "Enter number of times coin should be tossed " num
head=0
tail=0	
for (( i=0;i<=$num;i++))
do
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq 1 ]
then
	echo "Flipped Coin is Head"
         ((head++))
else
	echo "Flipped Coin is Tail"
         ((tail++))
fi
done
if [ $head -gt $tail ] 
then 
     echo "head wins"
else
     echo "tail wins"
fi
