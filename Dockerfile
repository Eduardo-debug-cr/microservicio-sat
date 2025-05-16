FROM eclipse-temurin:17-jdk-jammy  # ¡Nombre correcto sin espacios!
WORKDIR /app
COPY target/microservicio-sat.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
