FROM openjdk:17-jdk-alpine
#ARG JAR_FILE=target/test-0.0.1-SNAPSHOT.jar
#COPY ${JAR_FILE} test-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java", "-jar", "/test-0.0.1-SNAPSHOT.jar"]
#EXPOSE 8080

WORKDIR /
COPY target/test-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
CMD ["java", "-jar", "/project.jar", "--server.port=8080"]
