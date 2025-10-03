#!/bin/bash

USERID=$( id -u)

if [ $USERID -ne 0 ]; then
    echo "error:: please run this script with root acess"
    exit 1 # failure is other than 0
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "error:: install mysql is failure"
    exit 1 # fialure
else
    echo " install my sql "
