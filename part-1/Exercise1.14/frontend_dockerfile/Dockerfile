#installing node, which has base image as linux
FROM node:16.10.0

#setting workdir
WORKDIR /usr/src/app

#copy project files
COPY . .

#setting environment variable for backend app that will be run on port 8080 of host
ENV REACT_APP_BACKEND_URL=http://127.0.0.1:8080

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



