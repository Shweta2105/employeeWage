#!/bin/bash -x

empRatePerHr=20
empCheck=$((RANDOM%3))
isFulltime=1
isParttime=2


case $empCheck in
			$isFulltime)
				echo "Employee is present"
				empHrs=8
			;;
			$isParttime)
				echo "Employee working parttime"
				empHrs=4
			;;
			*)
				echo "Employee is absent"
				empHrs=0
			;;
esac
wage=$(($empRatePerHr*$empHrs))

