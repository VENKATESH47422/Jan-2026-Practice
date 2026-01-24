#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\3[0m"

MONGDB_HOST=mongodb.venky.shop

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" $>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ];
    then
        echo -e  "$2.. $R Failed $N "
        exit 1
    else
        echo -e "$2... $G SUCCESS $N"
    fi
}
if [ $ID -ne 0 ];
then
    echo "ERROR:: Run this script with ROOT UESR"
    exit 1
else
    echo "You Are ROOT USER"
fi

dnf module disable nodejs -y &>> $LOGFILE

VALIDATE $? "Disabling nodejs"

dnf module enable nodejs:18 -y &>> $LOGFILE

VALIDATE $? "Enabling nodejs"

dnf install nodejs -y &>> $LOGFILE

VALIDATE $? "Installing NOdejs"

useradd roboshop

