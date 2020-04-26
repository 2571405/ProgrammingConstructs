#!/bin/bash 

echo "Welcome to the sorting problem!"
read -p "Enter 1st input" a
read -p "Enter 2nd input" b
read -p "Enter 3rd input" c

first=$(( $a+($b*$c) ))

second=$(( ($a*$b)+$c ))

third=$(( $c+($a/$b) ))

fourth=$(( ($a%$b)+$c ))

echo "Result of 1st computation: "$first
echo "Result of 2nd computation: "$second
echo "Result of 3rd computation: "$third
echo "Result of 4th computation: "$fourth

declare -A dictionary
dictionary[0]=$first
dictionary[1]=$second
dictionary[2]=$third
dictionary[3]=$fourth

for (( i=0;i<=3;i=$i+1 ))
do
	array[$i]=${dictionary[$i]}
done

over1=0
while (( over1!=3 ))
do
   for (( j=0;j<=2;j=$(( $j+1 )) ))
   do
      if (( ${array[$j]}<=${array[$j+1]} ))
      then
         temp=${array[$j]}
         array[$j]=${array[$j+1]}
         array[$j+1]=$temp
      fi
   done
over1=$(( $over1+1 ))
done
echo "The array in descending order is: " ${array[@]}
