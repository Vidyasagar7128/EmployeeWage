#!/bin/bash

FULLTIME=0
PARTTIME=1
EMPRATEPERHOUR=20
NUMBEROFWORKINGDAYS=20
totalSalary=0
MAXHRSINMONTH=100

totalEmpHrs=0
totalWorkingDays=0

while (( ($totalEmpHrs<$MAXHRSINMONTH) && ($totalWorkingDays<$NUMBEROFWORKINGDAYS) ))
do
        totalWorkingDays=$(($totalWorkingDays+1))
        check=$((RANDOM%2))
        case $check in
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
        totalEmpHrs=$(($totalEmpHrs+$empHours))
done
        totalSalary=$(($totalEmpHrs*$EMPRATEPERHOUR))

function empJob()
{
        case $1 in
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

}

while (( ($totalEmpHrs<$MAXHRSINMONTH) && ($totalWorkingDays<$NUMBEROFWORKINGDAYS) ))
do
        totalWorkingDays=$(($totalWorkingDays+1))
        empHours=$( empJob $((RANDOM%2)) )
        totalEmpHrs=$(($totalEmpHrs+$empHours))
done
echo "Hours :" $totalEmpHrs
