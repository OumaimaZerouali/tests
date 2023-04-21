#!/bin/sh
IMAGE_NAME="redwizardofoz/project_test"
IMAGE_TAG=$(git rev-parse --short HEAD) # first 7 characters of the current commit hash

echo "Building Docker image ${IMAGE_NAME}:${IMAGE_TAG}, and tagging as latest"
docker build -t "${IMAGE_NAME}:${IMAGE_TAG}" --build-arg CACHEBUST=$(date +%s) .
#docker build -t "${IMAGE_NAME}:${IMAGE_TAG}" .
docker tag "${IMAGE_NAME}:${IMAGE_TAG}" "${IMAGE_NAME}:latest"

echo "Copying JAR file to target folder"
mkdir -p target
cp target/*.jar target/test.jar

echo "Authenticating and pushing image to Docker Hub"
docker login --username redwizardofoz --password $DOCKERHUB_PASSWORD
docker push "${IMAGE_NAME}:${IMAGE_TAG}"
docker push "${IMAGE_NAME}:latest"

#docker run -p 8080:8080 "${IMAGE_NAME}:latest"