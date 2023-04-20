#FROM openjdk:17-jdk-alpine
#ARG JAR_FILE=target/test-0.0.1-SNAPSHOT.jar
#COPY ${JAR_FILE} test.jar
#ENTRYPOINT ["java", "-jar", "/test.jar"]
#EXPOSE 8080
#CMD ["java", "-jar", "/test.jar"]

FROM node:12.15.0-stretch as build

WORKDIR /home/node/app
COPY package-lock.json package.json ./
RUN npm ci
COPY . .


FROM node:12.15.0-alpine

USER node
RUN mkdir /home/node/app
WORKDIR /home/node/app
COPY --from=build --chown=node:node /home/node/app .

CMD ["node", "index.js"]