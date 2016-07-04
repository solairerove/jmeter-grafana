#!/bin/bash

for i in "$@"
do
    echo Argument: $i
    $JMETER_HOME/bin/jmeter.sh -n -t $i
done

#$JMETER_HOME/bin/jmeter.sh -n -t $1 -l $2
