#!/bin/bash

# #download node and npm
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
# . ~/.nvm/nvm.sh
# nvm install 16.16.0

#create our working directory if it doesnt exist
DIR="/home/ec2-user/express-app"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi

# #download node and npm
# sudo yum install nodejs npm --enablerepo=epel

# #create our working directory if it doesnt exist
# DIR="/home/ec2-user/express-app"
# if [ -d "$DIR" ]; then
#   echo "${DIR} exists"
# else
#   echo "Creating ${DIR} directory"
#   mkdir ${DIR}
# fi

