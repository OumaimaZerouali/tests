FROM openjdk:17-jdk-alpine
RUN mvn package
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} test.jar
ENTRYPOINT ["java", "-jar", "/test.jar"]
EXPOSE 8080
CMD ["java", "-jar", "/test.jar"]
