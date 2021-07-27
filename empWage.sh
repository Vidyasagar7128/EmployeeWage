#!/bin/bash

FULLTIME=0
PARTTIME=1
EMPRATEPERHOUR=20
NUMBEROFWORKINGDAYS=20
totalSalary=0
MAXHRSINMONTH=100

totalEmpHrs=0
totalWorkingDays=0

function empJob() {
        case $1 in
        $PARTTIME)
                empHours=4
                echo "4"
        ;;
        $FULLTIME)
                empHours=8
                echo "8"
        ;;
        *)
                empHours=0
                echo "0"
        ;;
esac
}

while (( ($totalEmpHrs<$MAXHRSINMONTH) && ($totalWorkingDays<$NUMBEROFWORKINGDAYS) ))
do
        totalWorkingDays=$(($totalWorkingDays+1))
        empHours=$( empJob $((RANDOM%2)) )
        totalEmpHrs=$(( $totalEmpHrs + $empHours ))
done
echo "Hours :" $totalEmpHrs
