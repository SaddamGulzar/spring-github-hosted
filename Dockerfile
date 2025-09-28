# Dockerfile
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy the JAR file built on VM
ARG JAR_FILE
COPY ${JAR_FILE} app.jar

EXPOSE 8086

ENTRYPOINT ["java", "-jar", "app.jar"]
