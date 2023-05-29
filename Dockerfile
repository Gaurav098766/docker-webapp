#Specify a base image
FROM node:alpine

# WE ARE SPECIFYING THIS AS YOUR DIRECTORY LOCATION BECAUSE IN ROOT DIRECTRY THE NPM IS NOT BEING INSTALLED + THE CONTIANER IS NOT IN ROOT DIRECTRTY
WORKDIR /usr/app

# INSTALL SOME DEPENDENCIES
# WE dont to build docker file again and
# again if we some changes in the index.js file
# so we are the below command  
COPY ./package.json ./
RUN npm install
COPY ./ ./

#Default command
CMD ["npm","start"]