FROM openjdk:11-slim-buster as build

COPY .mvn .mvn
COPY mvnw .
COPY pom.xml .
COPY src src
RUN chmod +x mvnw

FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} test.jar
ENTRYPOINT ["java", "-jar", "/test.jar"]
EXPOSE 8080
CMD ["java", "-jar", "/test.jar"]


