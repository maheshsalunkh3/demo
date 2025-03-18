# Use OpenJDK base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy build artifact (JAR file) into container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose port (same as in application.properties)
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]
