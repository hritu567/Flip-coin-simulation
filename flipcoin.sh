#!/bin/bash -x
head=0
tail=0
while [ $head -lt 21 ] && [ $tail -lt 21 ]
do
   ran=$((RANDOM%2))
       if [ $ran -eq 1 ]
       then
           ((head++))
       else
           ((tail++))
       fi
done
      if [ $head -eq 21 ]
       then
         diff=$(($head - $tail))
        echo "heads win by $diff "
      elif [ $tail -eq 21 ]
       then
         diff=$(($tail - $head))
         echo "tails win by $diff "
      else
         echo "it is a tie "
         while [ $diff -le 2 ] && [ $diff -le 2 ]
         do
            temp=$((RANDOM%2))
            if [ $temp -eq 1 ]
            then 
               ((head++))
             else
              ((tail++))
              fi
               diff=$(($head-$tail))
          done
      fi
echo "number of time head wins $head"
echo "number of times tail wins $tail"