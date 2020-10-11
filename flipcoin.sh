#!/bin/bash -x


randomCheck=$((RANDOM%2))



if [ $randomCheck -eq 1 ]

then
	
  echo "Flipped Coin is Head"

else
	
   echo "Flipped Coin is Tail"

fi