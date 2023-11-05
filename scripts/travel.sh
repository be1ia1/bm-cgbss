#!/bin/bash

select city in 'Tokyo' 'London' 'Los Angeles' 'Kyiv' 'Dubai' 'Manchester' 'New York' 'Paris' 'Bangalore' 'Johannesburg' 'Istanbul' 'Milan' 'Abu Dhabi' 'Pune' 'Nairobi' 'Berlin' 'Karachi';
do
	case "$city" in
		'Tokyo') echo Japan;;
		'London'|'Manchester') echo United Kingdom;;
		'Los Angelos'|'New York') echo USA;;
		'Kyiv') echo Ukraine;;
		'Dubai'|'Abu Dhabi') echo United Arab Emirates;;
		'Paris') echo France;;
		'Bangalore'|'Pune') echo  India;;
		'Johannesburg') echo South Africa;;
		'Istambul') echo Turkey;;
		'Milan') echo Italy;;
		'Nairobi') echo Kenya;;
		'Berlin') echo Germany;;
		'Karachi') echo Pakistan;;
	esac
	break
done
