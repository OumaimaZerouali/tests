FROM maven:3.6.3 AS maven
COPY pom.xml pom.xml
RUN mvn dependency:resolveCOPY . /app


FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} test.jar
ENTRYPOINT ["java", "-jar", "/test.jar"]
EXPOSE 8080
CMD ["java", "-jar", "/test.jar"]
