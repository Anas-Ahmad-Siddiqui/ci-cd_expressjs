#!/bin/bash

sudo yum update -y
sudo yum upgrade -y
sudo yum install -y git

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
. ~/.nvm/nvm.sh
nvm install --lts

npm install pm2@latest -g

sudo ln -s "$(which node)" /sbin/node
sudo ln -s "$(which npm)" /sbin/npm
sudo ln -s "$(which pm2)" /sbin/pm2

directory="/home/ec2-user/ci-cd_expressjs"
# Check if the directory exists
if [ ! -d "$directory" ]; then
    # If not, create the directory
    mkdir -p "$directory"
    echo "Directory $directory created successfully."
else
    echo "Directory $directory already exists."
fi