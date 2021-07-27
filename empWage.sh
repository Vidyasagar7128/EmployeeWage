#!/bin/bash

random=$((RANDOM%2))

	if (( $random == 0 ))
	then
	echo "Present"
	else
	echo "Absent"
	fi
