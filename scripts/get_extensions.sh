#!/bin/bash

read -p 'What is your first name: ' name
read -p 'What is your surname: ' surname
read -p 'What is your extension number: ' -N 4 -s extnum
echo
read -p 'What access code would you like to use when dialing in: ' -N 4 -s accesscode
echo

PS3='What is the type of phone: '
select phonetype in headset handheld; do
	echo "You select is $phonetype"
	break
done

PS3='What is your department: '
select department in finance sales "customer service" engineering; do
	echo "You select is $department"
	break
done

echo "$name,$surname,$extnum,$accesscode,$phonetype,$department" >> extensions.csv
