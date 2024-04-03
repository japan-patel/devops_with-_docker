#installing node, which has base image as linux
FROM node:16.10.0

#setting workdir
WORKDIR /usr/src/app

#copy project files
COPY . .

#install npm
RUN npm install

#build static files with the following command
RUN npm run build

#serve the project using npm package server
RUN npm install -g serve

#expose the port to be able to access it
EXPOSE 5000

#run the app or serve the app on container's port 5000
CMD serve -s -l 5000 build



