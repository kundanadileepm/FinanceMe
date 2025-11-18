# Use OpenJDK 11
FROM openjdk:11-jdk

# Set JAR file
ARG JAR_FILE=target/financeme-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
