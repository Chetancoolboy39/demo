FROM openjdk:17-jdk-alpine
MAINTAINER baeldung.com
COPY target/demo-0.0.1-SNAPSHOT.jar demo-1.0.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/demo-1.0.0-SNAPSHOT.jar"]