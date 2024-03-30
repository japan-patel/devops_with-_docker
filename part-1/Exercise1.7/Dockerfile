#adding ubuntu image 
FROM ubuntu:22.04

#update, because curl doesn't get installed without it
RUN apt update

#install curl
RUN apt -y install curl

#setting work directory to /usr/src/app
WORKDIR /usr/src/app

#copying file to image
COPY script.sh .

#adding execute permissions
RUN chmod +x script.sh

#run the command to run script
CMD ./script.sh

