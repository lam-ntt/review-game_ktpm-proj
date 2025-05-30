# FROM gradle:7.6.1-jdk17 AS builder
# WORKDIR /app
# COPY . .
# RUN ./gradlew clean build

FROM openjdk:17-jdk-slim

WORKDIR /app

COPY build/libs/api-gateway-0.0.1-SNAPSHOT.jar /app/api-gateway.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/api-gateway.jar"]