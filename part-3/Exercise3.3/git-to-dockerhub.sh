#!/bin/bash

read -p "Enter the Git repository URL: " REPO_URL
read -p "Enter the target directory to clone the repository into: " TARGET_DIR

echo "Cloning repo from $REPO_URL into $TARGET_DIR..."
if git clone "$REPO_URL" "$TARGET_DIR"; then
    echo "Repo successfully cloned."
else
    echo "Error: Failed to clone the repo."
    exit 1
fi

cd "$TARGET_DIR" || exit

read -p "Enter the Docker image name(eg: username/repo:tag): " IMAGE_NAME

echo "Building docker image $IMAGE_NAME..."
if docker build -t "$IMAGE_NAME" .; then
    echo "Docker image successfully built."
else
    echo "Error: Failed to build Docker image."
    exit 1
fi

echo "Pushing Docker image $IMAGE_NAME to Docker Hub..."
if docker push "$IMAGE_NAME"; then
    echo "Docker image successfully pushed to Docker Hub."
else
    echo "Error: Failed to push Docker image."
    exit 1
fi

