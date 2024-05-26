#! /bin/bash

sudo yum install git -y
sudo yum install maven -y
sudo yum install java-1.8.0-openjdk-devel -y 

if [ -d "addressbook" ]
then
   echo "repo is already cloned and exists"
   cd /home/ec2-user/addressbook
   git checkout test
   git pull origin test
else
   git clone https://github.com/saicharansc/addressbook.git
   cd addressbook
   git checkout test
fi

cd addressbook
mvn package
