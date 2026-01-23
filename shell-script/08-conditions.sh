#!/bin/bash

Number1=$1
Number2=$2

if [ $Number1 -gt 100 ]; then 
    Addition=$(($Number1+$Number2))
        echo " 1st number  is > 100 so Addition:: $Addition "
else 
        Subtraction=$(($Number1-$Number2))
        echo " 1st is number < 100 so Subtraction:: $Subtraction "
fi

