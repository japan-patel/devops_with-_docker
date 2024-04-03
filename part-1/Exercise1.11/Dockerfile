# getting java8 and OS
FROM  openjdk:8-jdk-alpine3.7

#setting work dir
WORKDIR /usr/src/app

#copy all project files
COPY . .

#package the project
RUN ./mvnw package

#expose port
EXPOSE 8080

#runnung the app
CMD java -jar ./target/docker-example-1.1.3.jar
