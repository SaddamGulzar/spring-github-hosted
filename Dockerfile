# Use OpenJDK base image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy the built jar file into container
COPY target/*.jar app.jar

# Expose port 8086
EXPOSE 8086

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
