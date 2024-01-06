#!/bin/bash
 apt update -y
 apt install docker.io -y
 usermod -aG docker jenkins
 usermod -aG docker ubuntu
 systemctl restart docker