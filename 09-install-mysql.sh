#!/bin/bash

ID=(id -u)

if [ $ID -ne 0]; 
then
    echo " Please login with SUdo user "
    exit 1
else
    echo " Root user login Succesful "