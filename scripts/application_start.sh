#!/bin/bash

echo 'run application_start.sh: ' >> /home/ec2-user/CodeDeploy_expressjs/deploy.log

cd /home/ec2-user/CodeDeploy_expressjs >> /home/ec2-user/CodeDeploy_expressjs/deploy.log
pm2 delete CodeDeploy-app >> /home/ec2-user/CodeDeploy_expressjs/deploy.log

pm2 start server.js --name=CodeDeploy-app >> /home/ec2-user/CodeDeploy_expressjs/deploy.log

pm2 save >> /home/ec2-user/CodeDeploy_expressjs/deploy.log
pm2 startup >> /home/ec2-user/CodeDeploy_expressjs/deploy.log

# nodejs-app is the same name as stored in pm2 process
echo 'pm2 restart CodeDeploy-app' >> /home/ec2-user/CodeDeploy_expressjs/deploy.log
pm2 restart CodeDeploy-app >> /home/ec2-user/CodeDeploy_expressjs/deploy.log