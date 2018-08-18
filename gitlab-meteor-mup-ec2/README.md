# Gitlab full CI/CD
**Sample for Meteor and MUP** <br><br>
I suggest here a full CI/CD implementation that dosen't require any other service or an initial setup in your host/instance.

The scenario works for a meteor app and deploys using mup.<br>

## Implementation :

- **deploy.sh**,  and the **.gitlab-ci.yml** are to be copied into the root of your app code.
Later only pushing updates will trigger the whole process.
- **.gitlab-ci.yml** has the GitlabCI instructions. You will need to change some variables to your own case.
- **deploy.sh** has the last deployment steps handled

## Prerequisites
To use this scenario, we assume you have the following :
- Your code into a gitlab repo
- A linux host (debian based), it can be a VPS, an EC2 instance or any sort of server with ssh access (refer to mup documentation for the ssh access part)
