]FROM eclipse-temurin:17-jdk-jammy
EXPOSE 8080  # ¡No olvides esta línea!
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
COPY src ./src
RUN ./mvnw package -DskipTests
ENTRYPOINT ["java", "-jar", "target/microservicio-sat.jar"]
