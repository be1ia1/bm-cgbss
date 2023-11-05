#!/bin/bash

result=""

while getopts "m:s:" opt; do
	case "$opt" in
		m) result=$(($result + $OPTARG * 60));;
		s) result=$(($result + $OPTARG));;
		\?) echo "Wrong argument $OPTARG";;
	esac
done

while [ $result -gt 0 ]; do
	echo $result
	result=$(( $result - 1 ))
	sleep 1s
done
echo "Time\`s Up!"
