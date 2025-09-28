# Dockerfile
FROM openjdk:17-jdk-slim

WORKDIR /app

ARG JAR_FILE
COPY ${JAR_FILE} app.jar

EXPOSE 8086

ENTRYPOINT ["java", "-jar", "app.jar"]
