#!/bin/bash

echo "Flip Coin Simulator Problem"

toss=$(( $RANDOM%2 ))
if (( $toss ))
then
   echo "Heads"
else
   echo "Tails"
fi

heads=0
tails=0
for (( i=1;i<=10;i=$i+1 ))
do
   toss1=$(( $RANDOM%2 ))
   if (( $toss1 ))
   then
      heads=$(( $heads+1 ))
   else
      tails=$(( $tails+1 ))
   fi
done
echo "The number of times HEADS won out of 10 times: "$heads
echo "The number of times TAILS won out of 10 times: "$tails

