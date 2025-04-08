FROM openjdk:17-jdk-slim

WORKDIR /app

COPY build/libs/Microservice3-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-Xms256m", "-Xmx500m","-jar", "app.jar"]
