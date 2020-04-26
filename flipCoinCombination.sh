#!/bin/bash

echo "Flip Coin Combination Problem"
toss=$(( $RANDOM%2 ))
if (( $toss ))
then
   echo "Heads"
else
   echo "Tails"
fi
