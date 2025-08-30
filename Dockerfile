FROM openjdk:21-jdk-slim

WORKDIR /app

# Copy JAR from the builder stage
COPY --from=builder /app/target/taskManager-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the app
CMD ["java", "-jar", "app.jar"]
