#!/bin/bash
#sudo docker run -d -it --name dev_server --privileged -p 10024:22 -p 8080:8080  -e "PASSWORD=coder" code_server:v1 /usr/sbin/init
sudo docker run -d -it --name dev_server1 -p 10025:22 -p 8081:8080  -e "PASSWORD=coder" code_server:v1 /usr/sbin/init
