#!/bin/bash

if [ -d $HOME/performance ]; then
	echo "$HOME/performance exists, nothing to create.."
else
	mkdir $HOME/performance
fi

echo $(LANG=C free) >> $HOME/performance/memory.log
