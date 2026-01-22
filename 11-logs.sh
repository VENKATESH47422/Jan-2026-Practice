#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executed at $TIMESTAMP" &>> $LOGFILE

if [ $ID -ne 0 ];
then
    echo -e " $R Error:: Run this script with root user $N"
    exit 1
else
    echo -e " $G You are a Root user $N"
fi

VALIDATE(){
    if [ $1 -ne 0 ];
    then
        echo -e  "ERROR:: $2.. $R Failed $N"
        exit 1
    else
        echo -e  "$2 .. $G SUCCESS $N"
    fi 
}

yum install telne -y &>> $LOGFILE

VALIDATE $? "Installing Telnet"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing Git"

yum install nginx -y &>> $LOGFILE

VALIDATE $? "Installing Nginx"