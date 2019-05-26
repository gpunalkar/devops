#!/bin/bash
cd /home/ec2-user
##Java Installation##
printf "Enter Java Installation Path\n"
read javaPath

## Entered http://ghaffarian.net/downloads/Java/jdk-8u202-linux-x64.tar.gz ##
wget $javaPath
tar -xvf jdk-8u202-linux-x64.tar.gz

##Set Java home##
export JAVA_HOME=/home/ec2-user/jdk1.8.0_202
export PATH=$PATH:$JAVA_HOME/bin

##Install Maven##

printf "Enter Maven Installation Path\n"
read mavenPath

## Entered http://mirror.olnevhost.net/pub/apache/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz ##
wget $mavenPath
tar -xvf apache-maven-3.0.5-bin.tar.gz

##Environmentalvariablesetup##
export MAVEN_HOME=/home/ec2-user/apache-maven-3.0.5
export PATH=$PATH:$MAVEN_HOME/bin

## execute .bashrc ##
source /home/ec2-user/.bashrc

##Install Git and clone maven-hello-world.git##
dnf install git-core 
git clone https://github.com/pdurbin/maven-hello-world.git
echo "Enter the Git user name:"
read username
echo "Enter the Git user email id:"
read emailid
git config --global user.name "$username"
git config --global user.name "$emailid"

##CheckMaveninstalledornot##
mvn --version
cd maven-hello-world
cd my-app

##Now got to maven source code##
mvn clean install
cd target
exit
