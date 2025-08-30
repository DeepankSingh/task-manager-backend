# ---------- Build Stage ----------
FROM maven:3.9.4-eclipse-temurin-21 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# ---------- Runtime Stage ----------
FROM openjdk:21-jdk-slim
WORKDIR /app
COPY --from=builder /app/target/taskManager-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
