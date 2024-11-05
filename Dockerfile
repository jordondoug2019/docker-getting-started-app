ARG targetplatform
#Created a variable that allows me to set the platform dynamically 
FROM --platform=${targetplatform} node:18-alpine

#Docker pulls node, version 18-apline down from DOcker Hub 

WORKDIR /app
#created an app directory 

COPY . .
#Copied files from the local machine directory to the current working dir
# of the Docker image. 
#1st .= current directory 
#2nd . = destination directory 

RUN npm install --production 
#installs all dependenices listed in package.json 
#--production tells yarn to install only the production dependencies

CMD [ "node", "src/index.js"]
#Tells docker to run node src/index.js when the container starts

EXPOSE 3000
#Open Port 3000
