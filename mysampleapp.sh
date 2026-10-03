#!/usr/bin/env bash
set -e

CONTAINER_NAME="app"
IMAGE_NAME="mysampleapp"
PORT_MAPPING="8080:8080"

# Stop and remove existing container if running
if [ "$(docker ps -aq -f name=^/${CONTAINER_NAME}$)" ]; then
    echo "Stopping and removing existing container: ${CONTAINER_NAME}..."
    docker stop "${CONTAINER_NAME}" >/dev/null 2>&1 || true
    docker rm "${CONTAINER_NAME}" >/dev/null 2>&1 || true
fi

echo "Starting ${CONTAINER_NAME}..."
docker run \
  --detach \
  --name "${CONTAINER_NAME}" \
  --publish "${PORT_MAPPING}" \
  "${IMAGE_NAME}"

echo "Container ${CONTAINER_NAME} started successfully."