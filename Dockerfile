FROM redwizardofoz/project_test
RUN apt-get update && apt-get install -y maven
COPY . /app
WORKDIR /app
RUN mvn package

FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} test.jar
ENTRYPOINT ["java", "-jar", "/test.jar"]
EXPOSE 8080
CMD ["java", "-jar", "/test.jar"]
