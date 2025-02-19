# How to run ?

conda create -n test_docker python=3.11 -y

conda activate test

pip install -r requirements.txt


## Basic Important Docker Commands

```bash

# Show all running containers
docker ps

# Show all containers, including stopped ones
docker ps -a

# Run a new container from an image
docker run [IMAGE]

# Start one or more stopped containers
docker start [CONTAINER_ID_OR_NAME]

# Stop one or more running containers
docker stop [CONTAINER_ID_OR_NAME]

# Remove one or more containers
docker rm [CONTAINER_ID_OR_NAME]

# Pull an image from Docker Hub
docker pull [IMAGE_NAME:TAG]

# List all images on this machine
docker images

# Remove one or more images
docker rmi [IMAGE_ID_OR_NAME:TAG]


## Docker Custom Image Build Commands

docker build -t fiftybucks/my_calculator_app_docker_exp:latest .

docker run -p 8080:8080 fiftybucks/my_calculator_app_docker_exp:latest

docker run -d -p 8080:8080 fiftybucks/my_calculator_app_docker_exp:latest # runs app image container in docker even when bash is teminated

## Push to Docker Hub Commands

1. docker login
2. docker push fiftybucks/my_calculator_app_docker_exp:latest
