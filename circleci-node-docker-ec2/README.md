# CircleCI full CI/CD
**Sample for NodeJS** <br><br>
Using CircleCI can be very effective but tricky (as I discovered).<br>
I suggest here a full CI/CD implementation that dosen't require any other service or an initial setup in your host/instance.

The scenario works for a generic Node app.<br>
Small tweaking can make it work for virtually any other type of languages.

## Implementation :

- **deploy.sh**, **Dockerfile** and the **.circleci/** are to be copied into the root of your app code.
Later only pushing updates will trigger the whole process.
- **.circleci/config.yml** has the CircleCI instructions. You will need to change some variables to your own case.
- Dockerfile has a generic sequence to build the docker image for your app.
- **deploy.sh** has the last deployment steps handled

## Prerequisites
To use this scenario, we assume you have the following :
- Your code into a github repo
- CircleCI project where the repo is linked
- A linux host (debian based), it can be a VPS, an EC2 instance or any sort of server with ssh access.
- CircleCI has the ssh key to access your server. 
