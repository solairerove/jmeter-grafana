#!/bin/bash

#for i in "$@"
#do
#    echo Argument: $i
#    $JMETER_HOME/bin/jmeter.sh -n -t $i
#done
#TODO if have report pass as last param
jtl=".jtl";
arr="$@";

for i in "${arr[@]}"
do
    if [[ ${i} == *"${jtl}"* ]]; then
        echo "it's there!";
    else
        echo "fuck no"
    fi
#   echo Argument: ${i}
#   $JMETER_HOME/bin/jmeter.sh -n -t ${i}
done


#$JMETER_HOME/bin/jmeter.sh -n -t $1 -l $2
