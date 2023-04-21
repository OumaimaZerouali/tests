FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/test-0.0.1-SNAPSHOT.jar
COPY --from=0 ${JAR_FILE} test.jar
ENTRYPOINT ["java", "-jar", "/test.jar"]
EXPOSE 8080
CMD ["java", "-jar", "/test.jar"]
