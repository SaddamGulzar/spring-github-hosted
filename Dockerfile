# Use OpenJDK 17 slim as base
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the built JAR (works with both Maven or Gradle outputs)
COPY target/*.jar app.jar

# Expose port
EXPOSE 8086

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
