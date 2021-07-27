#!/bin/bash

FULLTIME=0
PARTTIME=1
FULLTIME=0
EMPRATEPERHOUR=20

random=$((RANDOM%3))
case $random in
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
        echo "Using Case :" $salary
