#!/bin/bash

USERID=$( id -u)

if [ $USERID -ne 0 ]; then
    echo "error:: please run this script with root acess"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "error:: install mysql is failure"
else
    echo " install my sql "
