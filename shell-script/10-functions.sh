#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERRoR:: $2 .. Failed"
    else
        echo "$2.. SUCCESS"
    fi
}

if [ $ID -ne 0 ];
then
    echo "Error:: Run this script with root user "
    exit 1
else
    echo "You are a Root user"
fi

yum install telnet -y

VALIDATE $? "Installing Telnet"

yum install git -y

VALIDATE $? "Installing Git"

yum install nginx -y

VALIDATE $? "Installing Nginx"

