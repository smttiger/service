# Use the official OpenJDK image for Java 17
FROM openjdk:17-oracle

# Optional: Set a maintainer or author label
LABEL maintainer="siarhei_fabiyanski@epam.com"

# Set a working directory inside the Docker image
WORKDIR /app

# Copy the built JAR file from your host machine into the Docker image
COPY target/service-*.jar app.jar

# Expose the port your Spring Boot application uses
EXPOSE 8080

# Define the command to run your application
ENTRYPOINT ["java", "-jar", "app.jar"]
