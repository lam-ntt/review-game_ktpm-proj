# FROM gradle:7.6.1-jdk17 AS builder
# WORKDIR /app
# COPY . .
# RUN ./gradlew clean build

FROM openjdk:17-jdk-slim

WORKDIR /app

COPY build/libs/user-service-0.0.1-SNAPSHOT.jar /app/user-service.jar

EXPOSE 8090

ENTRYPOINT ["java", "-jar", "/app/user-service.jar"]