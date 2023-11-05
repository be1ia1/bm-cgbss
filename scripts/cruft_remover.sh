#!/bin/bash

read -p "Enter folder path to cleanup: " path
read -p "Enter older than days number: " days

readarray oldfiles < <(find "$path" -maxdepth 1 -type f -mtime "+$days")

for filename in "${oldfiles[@]}"; do
	rm -i $filename
done
