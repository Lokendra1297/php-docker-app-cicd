#!/bin/bash
cd /home/ec2-user/app
docker stop $(docker ps -a -q)
docker build -t php-docker-app .
docker run -d -p 80:80 php-docker-app
