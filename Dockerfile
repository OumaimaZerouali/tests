FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ./target/test-0.0.1-SNAPSHOT.jar test-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/test-0.0.1-SNAPSHOT.jar"]
CMD ["-start"]

