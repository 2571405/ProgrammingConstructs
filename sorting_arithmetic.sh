#!/bin/bash 

echo "Welcome to the sorting problem!"
read -p "Enter 1st input" a
read -p "Enter 2nd input" b
read -p "Enter 3rd input" c

first=$(( $a+($b*$c) ))

second=$(( ($a*$b)+$c ))

third=$(( $c+($a/$b) ))

fourth=$(( ($a%$b)+$c ))
