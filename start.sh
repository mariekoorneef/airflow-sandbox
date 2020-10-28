#!/bin/bash

airflowExists=$( docker ps -aq -f name=data-airflow-dags_init_1 )
if [ -z "$airflowExists" ]; then
    docker-compose up --remove-orphans --build --force-recreate --no-start
fi

echo "Start docker containers"
docker-compose start

echo "Wait for the webserver"
until $(curl --output /dev/null --silent --head --fail http://localhost:8080); do
    printf '.'
    sleep 5
done

echo "You can visit localhost:8080"
