FROM openjdk:17-jdk-slim

WORKDIR /app

COPY build/libs/Monolith-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-Xms512m", "-Xmx1500m","-jar", "app.jar"]
