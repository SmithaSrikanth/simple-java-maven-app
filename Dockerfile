FROM openjdk:8-jre-alpine
WORKDIR /app
COPY my-app-1.0-SNAPSHOT.jar /app
CMD ["java -jar my-app-1.0-SNAPSHOT.jar"]
