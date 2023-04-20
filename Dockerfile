FROM maven:3.6.3-jdk-8-slim AS build
COPY src ./src
COPY pom.xml .
RUN mvn -f ./pom.xml clean package


FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
#COPY ./target/test-0.0.1-SNAPSHOT.jar test_project.jar
COPY --from=build ./target/test-0.0.1-SNAPSHOT.jar test_project.jar
ENTRYPOINT ["java", "-jar", "/test_project.jar"]

