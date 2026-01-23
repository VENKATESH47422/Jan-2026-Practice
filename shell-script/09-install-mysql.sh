#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ];
then
    echo " ERROR:: Please run this script with root access "
    exit 1
else
    echo " You are root user "
fi

yum install mysql -y

if [ $? -ne 0 ]; 
then
    echo " Error:: MySql installation is Failed "
    exit 1
else
    echo "Success:: MySql installation is Success "
fi

yum install nginx -y

if [ $? -ne 0 ]; 
then
    echo " Error:: Nginx installation is Failed "
    exit 1
else
    echo " Success:: Nginx installation is Success "
fi


yum install git -y

if [ $? -ne 0 ]; 
then
    echo " Error:: GIt installation is Failed "
    exit 1
else
    echo " Success:: Git installation is Success "
fi