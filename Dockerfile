FROM openjdk:8-jre-alpine
WORKDIR /app
COPY . .
EXPOSE 3000
CMD ["java -jar /app/target/my-app-1.0-SNAPSHOT.jar"]
