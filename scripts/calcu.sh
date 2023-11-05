#!/bin/bash

case $1 in
	'+') default_value=0 ;;
	'-') default_value=0 ;;
	'*') default_value=1 ;;
	'/') default_value=1 ;;
	*) echo "Must be +-*/, not else"
esac

echo $((${2:-$default_value} $1 ${3:-$default_value} $1 ${4:-$default_value} $1 ${5:-$default_value} $1 ${6:-$default_value} $1 ${7:-$default_value} $1 ${8:-$default_value} $1 ${9:-$default_value} $1 ${10:-$default_value}))
