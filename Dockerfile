# Use OpenJDK 17
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Pass JAR_FILE from workflow
ARG JAR_FILE
COPY ${JAR_FILE} app.jar

EXPOSE 8086

ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=8086"]
