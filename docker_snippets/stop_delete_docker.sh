#!/bin/sh
#
# Stop and remove docker containers and their images
#

#Stop all containers
echo "=> Stoping all containers"
sudo docker stop $(sudo docker ps -a -q)

# Delete all containers
echo "=> Deleting all containers"
sudo docker rm $(sudo docker ps -a -q)

# Delete all images
echo "=> Clearing all Docker images"
sudo docker rmi $(sudo docker images -q)
