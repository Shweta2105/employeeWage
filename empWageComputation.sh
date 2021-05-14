#!/bin/bash -x

empRatePerHr=20
empCheck=$((RANDOM%2))
isPresent=1

if [ $empCheck -eq $isPresent ]
then
	echo "Employee is present"
	empHrs=8
else
	echo "Employee is absent"
	empHrs=0
fi
wage=$(($empRatePerHr*$empHrs))

