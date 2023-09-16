#!/bin/bash
sudo docker run -d -it --name dev_server --privileged -p 10024:22 centos_ssh:v1 /usr/sbin/init
