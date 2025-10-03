#!/bin/bash

USERID=$( id -u)

if [ $USERID -ne 0 ]; then
    echo "error:: please run this script with root acess"
    exit 1 # failure is other than 0
fi

VALIDATE(){
if [ $1 -ne 0 ]; then
    echo "error:: install $2 is failure"
    exit 1 # fialure
else
    echo " install  $2 IS SUCESS "
fi
}

dnf install mysql -y
VALIDATE $? "MYSQL"

dnf install nginx -y
VALIDATE $? "nginx"

dnf install mongodb-mongosh -y
VALIDATE $? "MONG"

