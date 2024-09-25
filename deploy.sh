#!/bin/bash
# Stop all running containers
docker stop $(docker ps -a -q) || true

# Remove old containers
docker rm $(docker ps -a -q) || true

# Log in to ECR
$(aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 050451404045.dkr.ecr.ap-south-1.amazonaws.com)

# Pull the latest image from ECR
docker pull 050451404045.dkr.ecr.ap-south-1.amazonaws.com/php-docker-app:latest

# Run the container
docker run -d -p 80:80 050451404045.dkr.ecr.ap-south-1.amazonaws.com/php-docker-app:latest
