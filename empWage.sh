#!/bin/bash

FULLTIME=0
EMPRATEPERHOUR=20

random=$((RANDOM%2))

	if (( $random == 1 ))
	then
	empHours=4
	fi
	salary=$(($EMPRATEPERHOUR*$empHours))
        echo $salary
