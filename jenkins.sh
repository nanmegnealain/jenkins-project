#!/bin/bash
##author: Alain
##Date: june 13 2022
------------------------writing a script for jenkins installation---------------------------
# Step 1: Install Java
yum install java-1.8.0-openjdk-devel -y
#Step 2: Enable the Jenkins repository
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
echo $? 
if [ $? -ne 0 ]
then
	echo “wget did not install”
else
	echo " installing wget wait ...."
	 yum install wget -y
fi
sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkis.repo#Stp 3: Install the latest stable version of Jenkins
yum install jenkins  -y
systemtl start jenkins
systemctl status jenkins
systemctl enabln
ece jenkins
## Step 4: Adjust the firewall
$ firewall-cmd --permanent --zone=public --add-port=8080/tcp
$ firewall-cmd --reload
## Ip address
ifconfig
if [ $? -ne 0 ]
then
	yum install net-tools-2.0-0.25.20131004git.el7.x86_64 : Basic networking tools -y
	echo "net-net-tools installed"
	ifconfig
fi
