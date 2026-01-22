#!/bin/bash

Number1=$1
Number2=$2

if [ $Number1 -gt 100 ]
then
    do 
        Addition=$(($Number1+$Number2))
        echo " 1st is > 100 so Addition:: $Addition ""
    else 
        Subtraction=$(($Number1-$Number2))
        echo " 1st is < 100 so Subtraction:: $Subtraction ""
fi