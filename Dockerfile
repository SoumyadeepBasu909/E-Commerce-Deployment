# Start with a base image containing Java runtime
FROM openjdk:17-jdk-alpine

# The application's jar file (check the name and location)
ARG JAR_FILE=target/user-service-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
COPY ${JAR_FILE} /app/user-service.jar

# Make port 8080 available to the world outside this container
EXPOSE 8081

# Run the jar file
ENTRYPOINT ["java","-jar","/app/user-service.jar"]
