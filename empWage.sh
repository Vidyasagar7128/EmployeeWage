#!/bin/bash

FULLTIME=0
PARTTIME=1
FULLTIME=0
EMPRATEPERHOUR=20
NUMBEROFWORKINGDAYS=20
totalSalary=0

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
done
	echo "Monthly Salary :" $totalSalary
