#!/bin/bash

CONTAINER_NAME=grafana_grafana

if [ "$1" = "run" ]
then
    echo "Run container"
    docker run --name $CONTAINER_NAME -p 3000:3000 -i -t -d grafana/grafana
elif [ "$1" = "attach" ]
then
    docker attach $CONTAINER_NAME
elif [ "$1" = "rm" ]
then
    docker rm -f $CONTAINER_NAME
elif [ "$1" = "start" ]
then
    echo "Start container"
    docker start $CONTAINER_NAME
elif [ "$1" = "stop" ]
then
    echo "Stop container" docker stop $CONTAINER_NAME
    docker stop $CONTAINER_NAME
elif [ "$1" = "ip" ]
then
    echo "Server id :"
    docker inspect $CONTAINER_NAME | grep IPAddress
elif [ "$1" = "console" ]
then
    echo "Run console :"
    docker exec -it $CONTAINER_NAME /bin/bash
else
    echo "Execute with parameter build|run|rm|start|stop|app_start|app_stop|ip|console"
fi

