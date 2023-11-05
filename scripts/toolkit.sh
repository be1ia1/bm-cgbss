#!/bin/bash

select answer in cruft_remover folder_organiser; do
	echo $answer
	case $answer in
		cruft_remover)
			bash ./cruft_remover.sh;;
		folder_organiser)
			bash ./folder_organiser.sh;;
		*) : ;;
	esac
	break
done
