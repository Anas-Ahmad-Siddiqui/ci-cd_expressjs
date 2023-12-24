# ci-cd_expressjs
The starting point for our exciting journey into Continuous Integration and Continuous Deployment (CI/CD). This repository serves as the heart of our automation efforts, streamlining the development, testing, and deployment processes.

## Bash script to install CodeDeploy agent in Mumbai region. (-> have to be used as user data at the time of creation of instance) 
```
#!/bin/bash

yes Y | sudo yum install ruby
yes Y | sudo yum install wget

cd /home/ec2-user
wget https://aws-codedeploy-ap-south-1.s3.ap-south-1.amazonaws.com/latest/install

chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent restart
```