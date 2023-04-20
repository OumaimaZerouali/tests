FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/test-0.0.1-SNAPSHOT.jar
#COPY ./target/test-0.0.1-SNAPSHOT.jar test-0.0.1-SNAPSHOT.jar
COPY test-0.0.1-SNASHOT.jar /
ENTRYPOINT ["java", "-jar", "/test.jar"]

