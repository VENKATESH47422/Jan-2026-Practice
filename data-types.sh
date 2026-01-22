#!/bin/bash

Number1=$1
Number2=$2

SUM=$($Number1+$Number2)

echo " Sum of 2 numbers=$SUM "

echo " How many args passed = $# "

echo " All args passed = $@ "

echo " Script name = $0 "
