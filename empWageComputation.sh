#!/bin/bash -x

empRatePerHr=20
empCheck=$((RANDOM%3))
isPresent=1
isParttime=2
if [ $empCheck -eq $isPresent ]
then
	echo "Employee is present"

		empHrs=8
elif [ $empCheck -eq $isParttime ]
then
		echo "Employee working parttime"
		empHrs=4

else
	echo "Employee is absent"
	empHrs=0
fi
wage=$(($empRatePerHr*$empHrs))

