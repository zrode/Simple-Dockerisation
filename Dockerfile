#Generate Build
FROM maven:3-eclipse-temurin-17-alpine as build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -Dmaven.test.skip=true

#Dockerize
FROM eclipse-temurin:17.0.8.1_1-jdk-focal
WORKDIR /app
COPY --from=build app/target/sa-backend-0.0.1-SNAPSHOT.jar ./app1.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app1.jar"]
