#!/bin/bash
 apt install unzip -y
 wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.4.0.54424.zip .
 unzip ./sonarqube-9.4.0.54424.zip  -d /opt
 useradd -r -m -U -d /opt/sonarqube -s /bin/bash sonarqube
 chown -R sonarqube:sonarqube /opt/sonarqube-9.4.0.54424
 chmod -R 755 /opt/sonarqube-9.4.0.54424
 
 cd /opt/sonarqube-9.4.0.54424/bin/linux-x86-64/
 sudo -u sonarqube ./sonar.sh start

