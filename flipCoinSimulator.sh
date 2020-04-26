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

heads=0
tails=0
over=0
while (( over!=1 ))
do
   toss1=$(( $RANDOM%2 ))
   if (( $toss1 ))
   then
      heads=$(( $heads+1 ))
   else
      tails=$(( $tails+1 ))
   fi
   if (( $heads==21 || $tails==21 ))
   then
      over=1
   fi
done
echo "Till one of them reaches 21 times, HEADS won $heads times"
echo "Till one of them raeches 21 times, TAILS won $tails times"

if (( $heads>$tails ))
then
   echo "Its a win!"
   diff=$(( $heads-$tails ))
   echo "HEADS won by $diff times"
elif (( $heads<$tails ))
then
   echo "Its a win!"
   diff=$(( $tails-$heads ))
   echo "TAILS won by $diff times"
else
   echo "Its a tie!"
fi

if (( $heads==$tails ))
then
   while (( 1 ))
   do
      toss2=$(( $RANDOM%2 ))
      if (( $toss2 ))
      then
         $heads=$(( $heads+1 ))
      else
         $tails=$(( $tails+1 ))
      fi
      if (( ($heads-$tails)==2 || ($tails-$heads)==2 ))
      then
         if (( $heads>$tails ))
         then
            echo "Finally HEADS won!"
            exit
         elif (( $tails>$heads ))
         then
            echo "Finally TAILS won!"
            exit
         fi
      fi
   done
fi
