FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
RUN rm -r /usr/lib/jvm/default-jvm/jre/lib/security/*
add a/* /usr/lib/jvm/default-jvm/jre/lib/security
ENTRYPOINT ["java","-jar","/app.jar"]


