#!/bin/bash

read -p "Enter path to organize: " path

new_folders=(images documents spreadsheets scripts archives presentations audio video)

for folder in "${new_folders[@]}"; do
	if [ ! -d "$path/$folder" ]; then
		mkdir "$path/$folder"
	else
		:
	fi
done

while read -r line; do
	case "$line" in
		*.jpg|*.jpeg|*.png) mv -i "$path/$line" "$path/images";;
		*.doc|*.docx|*.txt|*.pdf) mv -i "$path/$line" "$path/documents";;
		*.xls|*.xlsx|*.csv) mv -i "$path/$line" "$path/spreadsheets";;
		*.sh) mv -i "$path/$line" "$path/scripts";;
		*.zip|*.tar|*.tar.gz|*.tar.bz2) mv -i "$path/$line" "$path/archives";;
		*.ppt|*.pptx) mv -i "$path/$line" "$path/presentations";;
		*.mp3) mv -i "$path/$line" "$path/audio";;
		*.mp4) mv -i "$path/$line" "video";;
		*) : ;;
	esac

done < <(ls $path)
