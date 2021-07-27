#!/bin/bash

FULLTIME=0
EMPRATEPERHOUR=20

random=$((RANDOM%2))

	if (( $random == 0 ))
	then
	empHours=8
	fi
	salary=$(($EMPRATEPERHOUR*$empHours))
        echo $salary
