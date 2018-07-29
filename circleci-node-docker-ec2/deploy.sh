#!/bin/sh
#
# deploy.sh
# CircleCI will call this script to deploy
# This script will be pushed by CircleCI along with a docker image
# Refer to the config.yml for the flow
#

# Let's check if our instance has Docker and running
# If not we will need to install it

which docker

if [ $? -eq 0 ]
then
    echo "docker already installed.."
else
     #Install Docker and start it
     curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
     sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
     sudo apt-get update
     sudo apt-cache policy docker-ce
     sudo apt-get install -y docker-ce
     sudo systemctl status docker
fi

#Cleaning previous runs
echo "=> Cleaning all containers"

#Stop all containers
sudo docker stop $(sudo docker ps -a -q)

# Delete all containers
sudo docker rm $(sudo docker ps -a -q)

# Delete all images
sudo docker rmi $(sudo docker images -q)

echo "=> Loading image from file.."

# Load the images put here by CircleCI
# Check config.yml to see how it got here
sudo docker load -i deploy-docker-image.tar # Change if you have renamed differently in the config.yml

#Run the app within the container
sudo docker run -d [USER]/[NAME] # Change to yours 
echo "=> Running container.."
