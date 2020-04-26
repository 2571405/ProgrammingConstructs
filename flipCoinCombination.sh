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

declare -A dictionary2
tt=0
th=0
ht=0
hh=0
for (( k=0;k<=9;k=$k+1 ))
do
   toss2=$(( $RANDOM%2 ))
   toss3=$(( $RANDOM%2 ))
   if (( $toss2==0 && $toss3==0 ))
   then
      dictionary2[$k]=0
      tt=$(( $tt+1 ))
   elif (( $toss2==0 && $toss3==1 ))
   then
      dictionary2[$k]=1
      th=$(( $th+1 ))
   elif (( $toss2==1 && $toss3==0 ))
   then
      dictionary2[$k]=2
      ht=$(( $ht+1 ))
   elif (( $toss2==1 && $toss3==1 ))
   then
      dictionary2[$k]=3
      hh=$(( $hh+1 ))
   fi
done
tt_per=`echo $tt | awk '{t=($1/10)*100} {print t}'`
th_per=`echo $th | awk '{t=($1/10)*100} {print t}'`
ht_per=`echo $ht | awk '{t=($1/10)*100} {print t}'`
hh_per=`echo $hh | awk '{t=($1/10)*100} {print t}'`

echo "Doublet percentage (HH): "$hh_per
echo "Doublet percentage (HT): "$ht_per
echo "Doublet percentage (TH): "$th_per
echo "Doublet percentage (TT): "$tt_per

declare -A dictionary3
for (( l=0;l<=9;l=$l+1 ))
do
   toss4=$(( $RANDOM%8 ))
   case $toss4 in
   0)
   dictionary[$l]=0
   ttt=$(( $ttt+1 ))
   ;;
   1)
   dictionary[$l]=1
   tth=$(( $tth+1 ))
   ;;
   2)
   dictionary[$l]=2
   thh=$(( $thh+1 ))
   ;;
   3)
   dictionary[$l]=3
   hhh=$(( $hhh+1 ))
   ;;
   4)
   dictionary[$l]=4
   htt=$(( $htt+1 ))
   ;;
   5)
   dictionary[$l]=5
   hht=$(( $hht+1 ))
   ;;
   6)
   dictionary[$l]=6
   hth=$(( $hth+1 ))
   ;;
   7)
   dictionary[$l]=7
   THT=$(( $THT+1 ))
   ;;
   esac
done

ttt_per=`echo $ttt | awk '{t=($1/10)*100} {print t}'`
tth_per=`echo $tth | awk '{t=($1/10)*100} {print t}'`
thh_per=`echo $thh | awk '{t=($1/10)*100} {print t}'`
hhh_per=`echo $hhh | awk '{t=($1/10)*100} {print t}'`
htt_per=`echo $htt | awk '{t=($1/10)*100} {print t}'`
hht_per=`echo $hht | awk '{t=($1/10)*100} {print t}'`
hth_per=`echo $hth | awk '{t=($1/10)*100} {print t}'`
tht_per=`echo $tht | awk '{t=($1/10)*100} {print t}'`
array_sort=($head_per1 $tails_per1 $tt_per $th_per $ht_per $hh_per $ttt_per $tth_per $thh_per $hhh_per $htt_per $hht_per $hth_per $tht_per)
echo "Triplet percentage (HHH): "$hhh_per
echo "Triplet percentage (TTT): "$ttt_per
echo "Triplet percentage (HTH): "$hth_per
echo "Triplet percentage (THT): "$tht_per
echo "Triplet percentage (HHT): "$hht_per
echo "Triplet percentage (THH): "$thh_per
echo "Triplet percentage (TTH): "$tth_per
echo "Triplet percentage (HTT): "$htt_per

