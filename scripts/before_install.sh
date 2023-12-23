#!/bin/bash

#download node and npm
sudo yum install nodejs npm --enablerepo=epel

#create our working directory if it doesnt exist
DIR="/home/ec2-user/express-app"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi