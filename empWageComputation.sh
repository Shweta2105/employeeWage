#!/bin/bash -x

empRatePerHr=20
isFulltime=1
isParttime=2
numOfWorkingDays=20
TotalEmpHrs=0

for ((day=1; day<=$numOfWorkingDays; day++))
do
	empCheck=$((RANDOM%3))
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
	TotalEmpHrs=$(($TotalEmpHrs+$empHrs))
done
wage=$(($empRatePerHr*$TotalEmpHrs))

