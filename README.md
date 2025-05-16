# microservicio-sat
FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
COPY target/microservicio-sat.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
