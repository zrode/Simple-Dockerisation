#Generate Build
FROM openjdk:17-jdk-slim as build
WORKDIR /app
COPY pom.xml .
COPY src ./src
# Install Maven
RUN apt-get update && apt-get install -y maven
RUN mvn clean package -Dmaven.test.skip=true

#Dockerize
FROM openjdk:17-oracle
WORKDIR /app
COPY --from=build app/target/sa-backend-0.0.1-SNAPSHOT.jar ./app1.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app1.jar"]
