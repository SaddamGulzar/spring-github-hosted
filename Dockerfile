# Use OpenJDK 17 base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the JAR file into the container
ARG JAR_FILE
COPY ${JAR_FILE} app.jar

# Expose the application port
EXPOSE 8086

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
