#!/bin/bash

echo "Flip Coin Simulator Problem"

toss=$(( $RANDOM%2 ))
if (( $toss ))
then
   echo "Heads"
else
   echo "Tails"
fi
