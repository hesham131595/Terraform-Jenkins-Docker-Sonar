#!/bin/bash

 apt update
 apt install openjdk-11-jre -y

curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key |  tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ |  tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
 apt-get update
 apt-get install jenkins -y
