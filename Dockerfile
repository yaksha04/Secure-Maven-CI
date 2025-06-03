# Use Maven with Java 11 to build the app
FROM maven:3.8.6-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Use a lightweight JRE image with Java 11 to run the app
FROM openjdk:11-jdk-slim
WORKDIR /app
COPY --from=build /app/target/SecureMavenCI-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]

