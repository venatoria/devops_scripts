#!/bin/sh

#Check environment from passed argument
if [ -z "$1" ]
then
	echo "Bad command"
	exit 0
fi

#Install Meteor
echo "=> Installing Meteor.."
curl https://install.meteor.com/ | sh

##Install MUP
echo "=> Installing MUP.."
npm install -g mup

#Get the NPM modules
echo "=> Installing the node modules.."

# PUT HERE YOUR METEOR NPM INSTALLS

# Now Assuming you have a folder for mup settings for dev (deploy_dev) and another for prod (deploy_prod) 

#Jump into the right deployement folder
echo "=> Getting into the deploy_$1 folder.."
cd .deploy_$1

#run the mup setup
echo "=> MUP Setup.."
mup setup

#ALL IS READY NOW TO DEPOLOY
echo "=> DEPLOYING!"
mup deploy
