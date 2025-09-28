FROM openjdk:17-jdk-slim

WORKDIR /app

COPY build/libs/*.jar app.jar

# App runs on port 8086
EXPOSE 8086

ENTRYPOINT ["java","-jar","app.jar","--server.port=8086"]
