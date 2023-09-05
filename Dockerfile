# get the base node image
FROM node:16-alpine 

# set the working dir for container
WORKDIR /Education-Website-ReactJs

# copy the json file first
COPY ./package.json /Education-Website-ReactJs

# install npm dependencies
RUN npm install

# copy other project files
COPY . .  

# expose port
EXPOSE 3000

# build the folder
CMD [ "npm", "run", "start" ]
