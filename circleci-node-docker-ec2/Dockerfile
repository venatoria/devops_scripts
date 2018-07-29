#
# Dockerfile for a typical Node app
#

FROM node:10-alpine
RUN mkdir -p ~/node-app
WORKDIR ~/node-app
COPY . .

# Install npm packages
RUN npm install

# PORT
EXPOSE 80
#Change if another port is needed

# Running command
CMD [ "node", "index.js" ]
