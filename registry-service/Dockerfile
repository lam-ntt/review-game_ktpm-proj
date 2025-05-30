
# FROM gradle:7.6.1-jdk17 AS builder
# WORKDIR /app
# COPY . .
# RUN ./gradlew clean build

FROM openjdk:17-jdk-slim

# RUN apt-get update && \
#     apt-get install -y curl && \
#     rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY build/libs/registry-service-0.0.1-SNAPSHOT.jar /app/registry-service.jar

EXPOSE 8761

ENTRYPOINT ["java", "-jar", "/app/registry-service.jar"]

