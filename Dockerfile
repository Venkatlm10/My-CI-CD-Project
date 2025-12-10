FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/My-CI-CD-Project-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
