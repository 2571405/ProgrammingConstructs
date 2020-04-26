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


