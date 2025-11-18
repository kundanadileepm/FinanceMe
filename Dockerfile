# Use OpenJDK 17 slim image
FROM openjdk:17-jdk-slim

# Build argument for the JAR file
ARG JAR_FILE=target/financeme-0.0.1-SNAPSHOT.jar

# Copy the JAR into the container
COPY ${JAR_FILE} app.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "/app.jar"]
