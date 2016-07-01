#!/bin/bash

CONTAINER_NAME=influx_influxd

if [ "$1" = "run" ]
then
    echo "Run container"
    docker run -i -p 8083:8083 -p 8086:8086 -p 2003:2003 influx/influxd:jmeter
else
    echo "Execute with parameter build|run|rm|start|stop|app_start|app_stop|ip|console"
fi
