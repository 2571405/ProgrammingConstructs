#!/bin/bash

echo "Flip Coin Combination Problem"
toss=$(( $RANDOM%2 ))
if (( $toss ))
then
   echo "Heads"
else
   echo "Tails"
fi

declare -A dictionary1
for (( i=0;i<=9;i=$i+1 ))
do
   toss1=$(( $RANDOM%2 ))
   if (( $toss1 ))
   then
      dictionary1[$i]=1
   else
      dictionary1[$i]=0
   fi
done
heads=0
tails=0
for (( j=0;j<=9;j=$j+1 ))
do
   if (( dictionary1[$j]==1 ))
   then
      heads=$(( $heads+1 ))
   elif (( dictionary1[$j]==0 ))
   then
      tails=$(( $tails+1 ))
   fi
done

head_per1=`echo $heads | awk '{t=($1/10)*100} {print t}'`
tails_per1=`echo $tails | awk '{t=($1/10)*100} {print t}'`
echo "Singlet percentage (heads): "$head_per1
echo "Singlet percentage (tails): "$tails_per1

