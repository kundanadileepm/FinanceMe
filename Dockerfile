# Use a valid OpenJDK 11 image
FROM openjdk:11.0.20-jdk-slim

# Build argument for JAR file
ARG JAR_FILE=target/financeme-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

# Expose port (if your app runs on 8080)
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java","-jar","/app.jar"]
