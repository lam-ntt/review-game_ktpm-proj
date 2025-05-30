# FROM gradle:7.6.1-jdk17 AS builder
# WORKDIR /app
# COPY . .
# RUN ./gradlew clean build

FROM openjdk:17-jdk-slim

WORKDIR /app

COPY build/libs/game-service-0.0.1-SNAPSHOT.jar /app/game-service.jar

EXPOSE 8091

ENTRYPOINT ["java", "-jar", "/app/game-service.jar"]