#!/bin/bash

FULLTIME=0
PARTTIME=1
EMPRATEPERHOUR=20
NUMBEROFWORKINGDAYS=20
totalSalary=0
MAXHRSINMONTH=100

totalEmpHrs=0
totalWorkingDays=0
        for (( day=1; day<$NUMBEROFWORKINGDAYS; day++ ))
do
        ran=$((RANDOM%2))
        case $ran in
        $PARTTIME)
        empHours=4
        ;;
        $FULLTIME)
        empHours=8
        ;;
        *)
        empHours=0
        ;;
esac
        salary=$(($EMPRATEPERHOUR*$empHours))
        totalSalary=$(($totalSalary+$salary))
	dailyWage[(($day))]=$salary
done
        echo "Total Salary :" $totalSalary
	dailyWage[((${#dailyWage[@]}+1))]=$totalSalary
	echo "Daily Wage With Total : " ${dailyWage[@]}