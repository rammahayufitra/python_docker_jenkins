#!/bin/sh
if [ $(docker ps -f name=blue -q) ]
then
    ENV="green"
    OLD="blue"
else
    ENV="blue"
    OLD="green"
fi

echo "Starting "$ENV" container"
usr/local/bin/docker-compose --project-name=$ENV up -d

echo "Waiting..."
sleep 5s

echo "Stopping "$OLD" container"
usr/local/bin/docker-compose --project-name=$OLD stop