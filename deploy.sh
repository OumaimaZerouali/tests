#!/bin/sh
IMAGE_NAME="redwizardofoz/project_test"
IMAGE_TAG=$(git rev-parse --short HEAD) # first 7 characters of the current commit hash

echo "Building Docker image ${IMAGE_NAME}:${IMAGE_TAG}, and tagging as latest"
docker build -t "${IMAGE_NAME}:${IMAGE_TAG}" .

echo "Authenticating and pushing image to Docker Hub"
echo  docker login

docker tag "${IMAGE_NAME}:${IMAGE_TAG}" "${IMAGE_NAME}:latest"
docker push "${IMAGE_NAME}:${IMAGE_TAG}"
