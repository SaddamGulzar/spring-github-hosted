FROM openjdk:17-jdk-slim

ARG JAR_FILE
WORKDIR /app

COPY ${JAR_FILE} app.jar

EXPOSE 8086

ENTRYPOINT ["java","-jar","app.jar","--server.port=8086"]
