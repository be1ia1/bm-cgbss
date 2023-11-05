#!/bin/bash

while read line; do
	mkdir "$HOME/projects/test/$line"
done < "$1"
