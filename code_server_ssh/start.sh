#!/bin/bash
#sudo docker run -d -it --name dev_server --privileged -p 10024:22 -p 8080:8080  -e "PASSWORD=coder" code_server:v1 /usr/sbin/init
sudo docker run -d -it --name dev_server_ssh -p 10026:22 -p 8082:8080  -e "PASSWORD=coder" code_server_ssh:v1 /usr/sbin/init
