#!/bin/bash

echo "$@" | bc

echo $(( $@ ))
