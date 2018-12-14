FROM openjdk:8-jre-alpine
WORKDIR /app
COPY /home/centos/.ssh/simple-java-maven-app/simple-java-maven-app/target/my-app-1.0-SNAPSHOT.jar ./
RUN mvn install
COPY . .
EXPOSE 3000
CMD ["java -jar my-app-1.0-SNAPSHOT.jar"]
